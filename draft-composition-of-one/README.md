# Draft enabled service with Composition-of-one

Showcases a simple CAP OData v4 with a 1:1 composition in the data model and draft-enabled OData service.

## Draft creation during `NEW` event of root entity

CAP is not able to create a draft entry for the `1:1` relation if there is not active entry of the child entity.  
This has to be implemented in the `NEW` event of the root entity manually (see [handler](./srv/cat-service.js))
