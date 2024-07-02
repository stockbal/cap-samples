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

### Granting the created role to the HDI container user

So the HDI container user is able to create the synonyms and access the objects underneath the synonyms we have to create
an [`.hdbgrants`](./db/cfg/shared.hdbgrants) file with the appropriate roles. These roles will then be granted to the HDI container users via the created user provided service.

The syntax for such a file can be viewed [here](https://help.sap.com/docs/hana-cloud-database/sap-hana-cloud-sap-hana-database-developer-guide-for-cloud-foundry-multitarget-applications-sap-business-app-studio/syntax-options-in-hdbgrants-file).

## Mapping synonyms to CDS namespaces

To prevent any access issues it's best to write the synonym names always in uppercase letters.  
To prevent any naming collisions we can still map the synonym to a CDS namespace. Namespace parts need to be concatenated with `_`.

[`/db/src/synonyms/shared.hdbsynonym`](./db/src/synonyms/shared.hdbsynonym)  
```json
{
  "COM_PLAIN_REGIONS": {
    "target": {
      "object": "REGIONS",
      "schema": "PLAIN"
    }
  }
}
```

The capitalization of the CDS entity does not matter then. We could also write it like `ReGiOnS`.

[`/db/schema/plain.cds`](./db/schemas/plain.cds)  
```cds
namespace com.plain;

entity Regions {
    key Region      : String(5);
        Description : String(100);
}
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
