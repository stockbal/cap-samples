using my.bookshop as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled
    entity Books as projection on my.Books
        actions {
            action buy(amount : Integer)
        };

    action publish(bookId : UUID, publisher : String);

    event checkout {
        bookId : UUID;
        deepData: {
            other: String;
        }
    }
}
