namespace com.plain;

// Hint: We don't have to use caps for entity and column names here
//       CDS will map Region to REGION automatically as for any other
//       entity that will be deployed via the HANA deployer
entity Regions {
    key Region      : String(5);
        Description : String(100);
// Hint: This column exists in the table but is skipped to demonstrate
//       that not all columns need to be mapped
// Category : String(5);
}

entity MaterialTexts {
    key material : String(18);
        locale   : String(2);
        text     : String(40);
}
