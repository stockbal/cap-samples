# Draft enabled service with Composition-of-one

> **Note**: Follow this [link](https://github.com/stockbal/cap-samples/tree/main) to show all available scenarios

Showcases a simple CAP OData v4 with a 1:1 composition in the data model and draft-enabled OData service.

## Draft creation during `NEW` event of root entity

CAP is not able to create a draft entry for the `1:1` relation if there is not active entry of the child entity.  

### Method before CDS 7 and own draft event handlers

This has to be manually implemented in the `after` handler of the `NEW` event of the root entity (see [handler](https://github.com/stockbal/cap-samples/blob/ea44c9f27d6d298d449bf598319258a38e496936/srv/cat-service.js)).

### Method with CDS 7 and own draft event handlers

Create a `before` handler for `NEW` of the root entity and insert empty objects for all 1:1 compositions

e.g.:

```js
if (!req.data.distributor) { // distributor is the name of the 1:1 composition
  req.data.distributor = {};
}
```

**Note**: The event must be registered on the draft of the root:

```js
this.before("NEW", Books.drafts, ...
```
