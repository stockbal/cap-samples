# Vitest with CAP TypeScript

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

Sample repository with CAP TypeScript project to demonstrate testing with vitest.

## Typescript setup for vitest with `cds.test`

```ts
export default defineConfig({
  test: {
    env: {
      CDS_TYPESCRIPT: "true",
    }
  }
})
```

## Issues

### Module loading in CDS server

If a test is using `cds.test` to bootstrap the CDS server and a service implementation (or `server.ts`) requires a local module, the module loading breaks

```
Error: Cannot find module '/.../vitest/srv/utils/id' imported from /.../vitest/srv/server.ts
```

If switching to ESM setup with TypeScript the same thing occurs