using {
    main,
    REGIONS
} from '../db';

service MyService {
    entity Books as projection on main.Books;

    @cds.persistence.skip
    @readonly
    entity Regions {
        key REGION      : String;
            DESCRIPTION : String;
    };
}
