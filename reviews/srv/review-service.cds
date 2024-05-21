using {devepos.reviews as db} from '../db/data-model';


service ReviewsService @(path: '/reviews') {

    // Sync API
    entity Reviews as
        projection on db.Reviews
        excluding {
            likes
        }

    action like(review : type of Reviews : ID);
    action unlike(review : type of Reviews : ID);

    // Async API
    event reviewed : {
        subject : type of Reviews : subject;
        count   : Integer;
        rating  : Decimal;
    }
}


// Access control restrictions
annotate ReviewsService.Reviews with @restrict: [
    {
        grant: 'READ',
        to   : 'any'
    }, // everybody can read reviews
    {
        grant: 'CREATE',
        to   : 'authenticated-user'
    }, // users must login to add reviews
    {
        grant: 'UPDATE',
        to   : 'authenticated-user',
        where: 'reviewer=$user'
    },
    {
        grant: 'DELETE',
        to   : 'admin'
    },
];

annotate ReviewsService with @restrict: [
    {
        grant: 'like',
        to   : 'identified-user'
    },
    {
        grant: 'unlike',
        to   : 'identified-user',
        where: 'user=$user'
    },
];
