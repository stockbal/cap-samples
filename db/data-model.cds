namespace my.bookshop;

using {temporal} from '@sap/cds/common';

entity Books : temporal {
  key ID    : Integer;
      title : String;
      stock : Integer;
}
