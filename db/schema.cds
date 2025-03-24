namespace db;

using {cuid} from '@sap/cds/common';

entity ORDER {
    key ID    : Integer;
        Wrong : String;
}

entity Books : cuid {
    title          : String;
    WrongPublisher : String;
}
