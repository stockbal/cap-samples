namespace my.bookshop;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity Books : managed, cuid {
  title       : String  @title: 'Title';
  stock       : Integer @title: 'Stock';
  publishedOn : Date    @title: 'Published On';
}
