using {db} from '../db/schema';

@requires: 'authenticated-user'
service AppRequestsService {

    @odata.draft.enabled
    entity AppRequests   as projection on db.AppRequests;

    entity Conversations as projection on db.Conversations;
}
