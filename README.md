# Using Temporal data

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

Simple project to try out [temporal data](https://cap.cloud.sap/docs/cds/common#aspect-temporal).

It utilizes the aspect `temporal` from `@sap/cds/common`;

i.e.

```cds
aspect temporal {
  validFrom : Timestamp @cds.valid.from;
  validTo   : Timestamp @cds.valid.to;
}
```
