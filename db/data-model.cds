namespace my.bookshop;

using {
  cuid,
  managed,
  Currency
} from '@sap/cds/common';
using {common} from './common';

entity Books : managed, cuid {
  title       : localized String @title: 'Title';
  stock       : Integer          @title: 'Stock';
  currency    : Currency         @title: 'Currency'      @Common.IsCurrency;
  retailPrice : Decimal(10, 2)   @title: 'Retail Price'  @Measures.ISOCurrency: currency_code;
  genre       : String enum {
    Action;
    Fantasy;
  };
  author      : common.Author;
  publishedOn : Date             @title: 'Published On';

  publishers  : Composition of many Publishers
                  on publishers.book = $self;
}


entity Publishers : managed, cuid {
  name : String(255);
  book : Association to Books;
}
