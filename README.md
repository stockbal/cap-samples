# Classic HANA Schema sharing with HDI in CAP

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

Small SAP CAP Project to demonstrate the access of HANA Cloud tables from a classical (non-HDI) schema.

## Preparations before first deployment to Cloud Foundry

### Create classic schema with table in HANA

```sql
CREATE SCHEMA "PLAIN";
CREATE USER PLUSR PASSWORD "HanaRocks01" SET USERGROUP DEFAULT;
  ALTER USER PLUSR DISABLE PASSWORD LIFETIME;

CREATE COLUMN TABLE "PLAIN"."REGIONS" (
	REGION NVARCHAR(5),
	DESCRIPTION NVARCHAR(100),
	CATEGORY NVARCHAR(5),
	PRIMARY KEY(REGION)
);

CREATE ROLE CCROLE;
grant  SELECT, UPDATE, INSERT, DELETE, EXECUTE, SELECT METADATA ON SCHEMA "PLAIN" TO CCROLE with grant option;
grant  CCROLE to PLUSR with admin option;
```

### Create user provided service

```shell
cf cups CC_ACCESS -p "{\"user\":\"PLUSR\",\"password\":\"HanaRocks01\",\"tags\":[\"hana\"] , \"schema\" : \"PLAIN\" }"
```

## Handle `@cds.existence.exists` during development with `cds watch`

To handle the shared table from the schema `PLAIN` during production as well as during development, CAP provides a mechanism to provide specific configurations for each database.

To use this you should create db specific folders in the folder `/db`:

```
└── db
    └── hana
    |     └── index.cds
    └── sqlite
          └── index.cds
```

For `sqlite` for enhance the table definition to include the skipped column that exists in HANA Cloud

```cds
annotate Regions with @cds.persistence.exists
```

For `hana` we annotate the entity with `@cds.persistence.exists` to prevent the creation of an `.hdbtable` file during the build.

The last step so these configurations will take effect, is a `db-ext` entry in the `cds.requires` section of the `package.json` file:

```json
  "cds": {
    "requires": {
      "db-ext": {
        "[production]": {
          "model": "db/hana"
        },
        "[development]": {
          "model": "db/sqlite"
        }
      }
    }
  }
```
