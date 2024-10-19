using {db} from '../db/schema';

@requires: 'authenticated-user'
service AppRequestsService {
    action sendMessage(requestId : UUID, msg : String);

    @odata.draft.enabled
    entity AppRequests   as projection on db.AppRequests;

    @readonly
    entity Conversations as
        projection on db.Conversations {
            *,
            virtual null as initials : String
        };
}
