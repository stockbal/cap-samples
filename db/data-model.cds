namespace my.bookshop;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity Books : cuid, managed {
  title : String;
  stock : Integer;
}
