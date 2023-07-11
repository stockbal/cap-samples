# Demonstrates new `@cap-js/typer` type generator with CAP 7

## Issues

### Usage of `Date` JavaScript type for CDS `Date` types

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
