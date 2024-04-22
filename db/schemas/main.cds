namespace main;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {REGIONS} from './plain';

entity Books : cuid, managed {
    title : String;
}

define view RegionsView as
    select from REGIONS {
        REGION,
        DESCRIPTION
    }
