using my.bookshop as my from '../db/data-model';

@requires: 'authenticated-user'
service CatalogService {
    @restrict: [
        {
            grant: 'READ',
            to   : 'Viewer'
        },
        {
            grant: '*',
            to   : 'Admin'
        }
    ]
    entity Books as projection on my.Books;
}
