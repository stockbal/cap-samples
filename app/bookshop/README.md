# Bookshop Demo

Simple Bookshop Fiori Elements application.

## Local UI5 Development against deployed CAP service

### Setup

1. Initial deployment of the application (see [here](../../README.md#deployment))
2. Load environment variables of deployed CAP application with `npm run cf:de`  
   (*Note*: Cloud Foundry Plugin *DefaultEnv* is required!)
3. Create a `.env` file with the following content

   ```env
   xsapp_dest = [{"name": "bookshop-srv-api", "url": "<cap-app-url>", "forwardAuthToken": true}]
   ```

### Start UI5 App

1. Execute `npm run start:local`

