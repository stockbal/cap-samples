namespace db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity AppRequests : cuid, managed {
    name          : String      @title: 'Name';
    description   : LargeString @title: 'Description';
    type          : String      @title: 'Type';
    area          : String      @title: 'Area';
    status        : String      @title: 'Status' enum {
        Open;
        Denied;
        Accepted;
        In_Progress = 'In Progress';
        Finished;
        Closed;
    };
    conversations : Association to many Conversations
                        on conversations.request = $self;
}

entity Conversations : cuid {
    subject   : String;
    content   : LargeString;
    createdBy : managed:createdBy;
    createdAt : managed:createdAt;
    request   : Association to AppRequests;
}
