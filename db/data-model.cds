namespace my.bookshop;

using {cuid} from '@sap/cds/common';

entity Books : cuid {
  title       : String @title: 'Title';
  author      : String @title: 'Author';
  distributor : Composition of one Distributors
                  on distributor.book = $self;
}

entity Distributors : cuid {
  book : Association to Books;
  name : String @title: 'Name';
}
