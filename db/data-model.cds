namespace db;

using {API_BUSINESS_PARTNER as bp} from '../srv/external/API_BUSINESS_PARTNER';

using {
  cuid,
  managed
} from '@sap/cds/common';

entity Products : cuid, managed {
  name     : String                 @title: 'Name';
  category : String                 @title: 'Category';
  vendor   : Association to Vendors @title: 'Vendor';
}

entity Vendors as projection on bp.A_BusinessPartner {
      @title: 'Vendor'
  key BusinessPartner          as ID,
      @title: 'First Name'
      FirstName                as firstName,
      @title: 'Last Name'
      LastName                 as lastName,
      @title: 'Full Name'
      BusinessPartnerFullName  as fullName,
      @title: 'Type'
      BusinessPartnerType      as type,
      @title: 'Category'
      BusinessPartnerCategory  as category,
      @title: 'Organization Name 1'
      OrganizationBPName1      as orgName1,
      @title: 'Organization Name 2'
      OrganizationBPName2      as orgName2,
      @title: 'Organization Name 3'
      OrganizationBPName3      as orgName3,
      @title: 'Organization Name 4'
      OrganizationBPName4      as orgName4,
      @title: 'Is Blocked?'
      BusinessPartnerIsBlocked as isBlocked
};
