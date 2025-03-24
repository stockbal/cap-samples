using {db} from '../db/schema';

@requires: ''
service CatService {

    entity Books as projection on db.Books;

}
