namespace my.bookshop;

using {
  cuid,
  managed,
  Currency
} from '@sap/cds/common';

type Author {
  firstName : String(60) @title: 'First Name';
  lastName  : String(60) @title: 'Last Name';
  address   : {
    place   : String(30) @title: 'Street';
    zip     : String(10) @title: 'ZIP Code';
  };
}

entity Books : managed, cuid {
  title       : String          @title: 'Title';
  stock       : Integer         @title: 'Stock';
  currency    : Currency        @title: 'Currency'      @Common.IsCurrency;
  retailPrice : Decimal(10, 2)  @title: 'Retail Price'  @Measures.ISOCurrency: currency_code;
  author      : Author;
  publishedOn : Date            @title: 'Published On';
}
