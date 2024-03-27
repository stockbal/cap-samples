# Using an entity of a remote API as value help entity in Fiori Elements

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

## Description

The scenario is kept simple to best showcase the usage of the remote service. Therefore there is one simple persistent entity called `ConditionTypes` which will have an association to an entity `A_Product` to store the foreign key in the database table.  
The remote entity `A_Product` has a `one to many` association to a text entity, called `A_ProductDescription`.

The target result should be a value help connected to this `product_Product` field, with the two columns Product and Description where the Description column will be retrieved via an OData `$expand` and returns only the translated text (or nothing) which can be extracted in the on-read-handler via `req.locale`.

**TODO**: add further description of showcase...

## Testing

### Using the script `watch:onprem`

This npm script is assuming that you the following profile defined in either `.cdsrc-private.json` or a `.env` file.

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
