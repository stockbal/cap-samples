using my.bookshop as my from '../db/data-model';

@path: '/catalog'
service CatalogService {
    @odata.draft.enabled
    entity Books as projection on my.Books;
}
