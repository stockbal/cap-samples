# Showcases service access to scope-protected endpoint with `client_credentials`

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

## Description

This project shows a simple way to allow access to a secure endpoint in a CAP application with an OAuth token that has
been fetched with grant type `client_credentials`.


In a SaaS scenario this would normally be done with the help of a [service broker](https://www.npmjs.com/package/@sap/sbf), because the consumer subaccount - where the application is subscribed - does not have access to the created XSUAA instance of the application, which is deployed and running in the provider subaccount.

## Deploy the sample application

Run the following commands in the shell of your choice:

```shell
npm i
# build application
npm run build
# Login to cloud foundry and select org/space where you want to deploy
cf l ....
# deploy the application
npm run deploy
```

## Configuration for API testing

### Assign role collection for OAuth test of type `password`

Access the subaccount where you deployed the application and assign the role collection `Admin` to your user.

### Setup `.env` file

Create a `.env` file in the root folder of this project (alongside `test.http`). Use the following template.

```properties
# URL to UAA for token calls
uaaUrl=

# credentials of XSUAA instance for technical communication
extUaaClientId=""
extUaaClientSecret=""

# credentials of XSUAA instance that defines the authorization scopes and is bound to our app
# They can be retrieved via command "npm run get:tech-xsuaa-key"
uaaClientId=""
uaaClientSecret=""

# CAP service url - can be retrieved from VCAP_APPLICATION.application_uris in default-env.json
appUrl=

# Credentials of user with assigned Role Collection 'Admin' - of deployed bookshop application
user=
pw=""
```

The property values in the `.env` file can be filled from file `default-env.json` (can be retrieved after deployment via `npm run get:env`) and from the created service key of the xsuaa instance. (can be printed to the shell output with `npm run get:tech-xsuaa-key`)

### Install the REST client VSC extension

See extension recommendation in folder `.vscode` or use this [link](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)

### Run API Tests

Use the file [test.http](./test.http) and try out the different scenarios

1. Calls with OAuth `client_credentials` token with the xsuaa instance for external access
2. Calls with OAuth `client_credentials` token with the bound xsuaa instance
3. Calls with OAuth `password` token with the bound xsuaa instance and user credentials with assigned `Admin` role

## Undeployment

If the application is no longer required you run `npm run undeploy` in the shell, which will delete everything including the created role collections.