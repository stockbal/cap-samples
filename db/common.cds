namespace common;

type Author {
  firstName : String(60) @title: 'First Name';
  lastName  : String(60) @title: 'Last Name';
  address   : {
    place   : String(30) @title: 'Street';
    zip     : String(10) @title: 'ZIP Code';
  };
}