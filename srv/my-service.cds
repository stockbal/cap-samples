using {
               main,
    Regions as db_Regions
} from '../db';

service MyService {
    entity Books         as projection on main.Books;
    // Projection to directly change the underlying existing HDB table
    entity RegionsNative as projection on db_Regions;

    // Projection with READ access only and implemented in service handler
    @cds.persistence.skip
    @readonly
    entity Regions {
        key Region      : String;
            Description : String;
            Category    : String;
    };
}
