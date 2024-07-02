using {
    main,
    com.plain
} from '../db';

@requires: 'system-user'
service MyService {
    entity Books         as projection on main.Books;

    // Projection to directly change the underlying existing HDB table
    entity RegionsNative as projection on plain.Regions;

    // Projection with READ access only and implemented in service handler
    @cds.persistence.skip
    @readonly
    entity Regions {
        key Region      : String;
            Description : String;
            Category    : String;
    };
}
