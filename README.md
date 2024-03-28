# Using an entity of a remote API as value help entity in Fiori Elements

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

## Description

The scenario is the same as described in [remote-srv-complex](https://github.com/stockbal/cap-samples/tree/remote-srv-vh-complex). 
This branch is an alternative to the programmatic approach: Instead of manipulating the column for the description field and filtering data via code, this approach uses the built-in mechanism:
```JavaScript
    this.on("READ", ProductDescriptions, (req) => {
      (req.query as any).where(`Language = '${req.locale.toUpperCase()}'`);
      return extSrv.run(req.query);
    });
```
As you can see, the TypeScript interface doesn't provide access to the .where()-method, which doesn't replace the original where-clause, but extends the existing with "and". But, the method is available and also mentioned by the [learning journey](https://learning.sap.com/learning-journeys/build-side-by-side-extensions-on-sap-btp/exercise-adding-an-external-service_d73e2e9b-3002-41dc-bb0b-b390048eaf4c) in the step to reduce the number of business partners without names.

In consequence you should be able see the same results, if you run both examples in comparison.

Additionally, in this example, I've also added in the list report page the product description. There you may observe a strange behaviour, that under certain circumstances the description is empty. This is because of the dummy entry, which could be not available in the on-prem system and that leads to an error in CAP due to a failed request. If you delete that dummy entry, it should work.

## Testing

Install all dependencies via `npm i`.

### Using the script `watch:onprem`

This npm script is assuming that you have defined the following profile in either `.cdsrc-private.json` or a `.env` file.

Template for `.cdsrc-private.json`:

```json
{
  "cds": {
    "requires": {
      "API_PRODUCT": {
        "[onprem]": {
          "credentials": {
            "url": "<url to API_PRODUCT_SRV on S/4HANA system: e.g. http://host:port/sap/opu/odata/API_PRODUCT_SRV",
            "authentication": "BasicAuthentication",
            "username": "<sap system user>",
            "password": "<sap system password>"
          }
        }
      }
    }
  }
}
```

When the file is created, you should be able to test the application with `npm run watch:onprem` against your S/4HANA system
