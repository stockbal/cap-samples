namespace my.bookshop;

using {devepos} from '@devepos/common';

entity Books {
  key ID        : Integer;
      title     : String;
      stock     : Integer;
      setupDone : devepos.common.StringBoolean
}
