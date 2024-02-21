# Action to upload a file

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

Showcases how to send a file as payload of an action.

## Action definition

Normally media should be served via streams (see [Serving Media Data]([https://](https://cap.cloud.sap/docs/guides/media-data#serving-media-data))).

This approach requires a `POST` call to create an entry in the entity that holds the media content and a successive `PUT` call to actually upload the media content.

But maybe have to upload file to an external service and want to return the Id or some other metadata of the file in the response. And the whole process should only take a single http call.

The solution here is to use `base64` encoded strings.

```cds
action upload(file: Binary); // String type is possible as well
```

(See [service definition](./srv/file-upload-service.cds))

Here the action parameter `file` would contain a single file in a `base64` encoded string. With this approach you could even add additional files in a single request body.

## Handling the file in the service handler

You get a `Buffer` instance from the file string in just a single line

```js
const fileContent = Buffer.from(file, "base64");
```

(See [service handler](./srv/file-upload-service.js))

After that you'll have to handle it according to file type. If it is a simple text file you can easily read the buffer content with `fileContent.toString()`. If it is a zipped file for example you may have to use additional libraries to extract the contained files (e.g. [decompress](https://npmjs.com/decompress))

## Remarks

In the sample service the mime type was passed in the `JSON` body. However, the mime type can also be read directly from the buffer - with additional libraries this is very easy.
