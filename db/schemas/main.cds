namespace main;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {com.plain} from './plain';
using {com.foreign} from './foreign';

entity Books : cuid, managed {
    title : String;
}

// just a simple view to demonstrate the view creation on existing HANA Table
view RegionsView as
    select from plain.Regions {
        Region,
        Description
    }

// Another custom view created in our schema that is accessing data via synonym
view MyCountries as
    select from foreign.Countries {
        country
    }