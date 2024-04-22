using {
    main,
    REGIONS
} from '../db';

service MyService {
    entity Books         as projection on main.Books;

    // Projection to directly change the underlying existing HDB table
    entity RegionsNative as
        projection on REGIONS {
            REGION      as Region,
            DESCRIPTION as Description
        };

    // Projection with READ access only
    @cds.persistence.skip
    @readonly
    entity Regions {
        key REGION      : String;
            DESCRIPTION : String;
            CATEGORY    : String;
    };
}
