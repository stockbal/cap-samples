namespace devepos.reviews;

using {
  cuid,
  User
} from '@sap/cds/common';

// Reviewed subjects can be any entity that is uniquely identified
// by a single key element such as a UUID
type ReviewedSubject : String(111);

entity Reviews : cuid {
  subject  : ReviewedSubject @mandatory;
  reviewer : User            @mandatory;
  rating   : Rating          @assert.range;
  title    : String(111);
  text     : String(1111);
  date     : DateTime;
  likes    : Composition of many Likes
               on likes.review = $self;
  liked    : Integer default 0; // counter for likes as helpful review (count of all _likes belonging to this review)
}

type Rating          : Integer enum {
  Best  = 5;
  Good  = 4;
  Avg   = 3;
  Poor  = 2;
  Worst = 1;
}

entity Likes {
  key review : Association to Reviews;
  key user   : User;
}

// Auto-fill reviewers and review dates
annotate Reviews with {
  reviewer @cds.on: {insert: $user};
  date     @cds.on: {
    insert: $now,
    update: $now
  };
}
