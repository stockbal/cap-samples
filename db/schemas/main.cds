namespace main;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {REGIONS} from './plain';

entity Books : cuid, managed {
    title : String;
}

// just a simple view to demonstrate the view creation on existing HANA Table
define view RegionsView as
    select from REGIONS {
        REGION,
        DESCRIPTION
    }
