using my.bookshop as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled
    entity Books as projection on my.Books;
}