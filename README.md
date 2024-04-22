# Classic HANA Schema sharing with HDI in CAP

## Create classic schema with table in HANA

```sql
CREATE SCHEMA "PLAIN";
CREATE USER PLUSR PASSWORD "HanaRocks01" SET USERGROUP DEFAULT;
  ALTER USER PLUSR DISABLE PASSWORD LIFETIME;

CREATE COLUMN TABLE "PLAIN"."REGIONS" (
	REGION NVARCHAR(5),
	DESCRIPTION NVARCHAR(100),
	PRIMARY KEY(REGION)
);

CREATE ROLE CCROLE;
grant  SELECT, UPDATE, INSERT, DELETE, EXECUTE, SELECT METADATA ON SCHEMA "PLAIN" TO CCROLE with grant option;
grant  CCROLE to PLUSR with admin option;
```

## Create user provided service

```shell
cf cups CC_ACCESS -p "{\"user\":\"PLUSR\",\"password\":\"HanaRocks01\",\"tags\":[\"hana\"] , \"schema\" : \"PLAIN\" }"
```