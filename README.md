# Demonstrates new `@cap-js/typer` type generator with CAP 8

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

## Issues

### Named type definitions as elements not reflected correctly in class properties

Currently cds-typer generates named type elements like reflected in the linked CSN model.

#### Sample

// schema.cds

```cds
type Author {
  firstName : String;
  lastName : String;
}

entity Books : cuid {
  title : String;
  author : Author;
}
```

// index.ts

```ts
export function _BookAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class Book extends _._managedAspect(_._cuidAspect(Base)) {
    declare title?: string | null
    declare author?: Author | null
  };
}
```

Unfortunately the compiled model (sql and odata) handle such elements in a different way. They are flatted down and prefixed with the element name (i.e. `author_firstName` and `author_lastName`).

The current version cannot handle this at the moment - even with `--inlineDeclarations flat`. The only workaround is converting the named types into inline structs and using the aforementioned option `--inlineDeclarations flat` when generating the types.

### Usage of `Date` JavaScript type for CDS `Date` types [SOLVED]

CDS `Date`/`DateTime` types are generated as TypeScript `Date` types which produces problems as CAP does not really return `Date` objects but date `String`s.

```ts
import { Books } from "#cds-models/my/bookshop";

...

const books = await SELECT.from(Books);

for (let book of books) {
  // will result in an error as 'publishedOn' will not be a Date instance
  console.log(`Book ${book.title} was published in ${book.publishedOn.getFullYear()}`);
}
...
```

**Note**: Fixed with <https://github.com/cap-js/cds-typer/pull/29>

### Type checking not working correctly [SOLVED]

Although auto completion works correctly it is still possible to access any non existing property on an instance with a Type generated by `@cap-js/typer`:

Sample of generated file:

```ts
...
export function _BookAspect<TBase extends new (...args: any[]) => any>(Base: TBase) {
  return class Book extends Base {
        ID ?: number;
        title ?: string;
        stock ?: number;
        publishedOn ?: Date;
  };
}
...
```

If the return type of the generated aspect functions would be changed to `object` instead, the typescript compiler produces the expected syntax errors (see [cat-service.ts](./srv/cat-service.ts)).

**Note**: Fixed with <https://github.com/cap-js/cds-typer/pull/28>

### Testing with ts-jest [SOLVED]

If dynamic imports are inside handler or test code, node might have to be executed with an [additional option](https://jestjs.io/docs/ecmascript-modules):

```json
  "test": "node --experimental-vm-modules node_modules/jest/bin/jest"
```

**Note**: Beginning with **v0.26.0** of cds-typer, there is a new option `useEntitiesProxy` that allows the use of top level import anywhere, so the dynamic imports are no longer required
