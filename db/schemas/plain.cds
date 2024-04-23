// Hint: We don't have to use caps for entity and column names here
//       CDS will map Region to REGION automatically as for any other
//       entity that will be deployed via the HANA deployer
@cds.persistence.exists
entity Regions {
    key Region      : String(5);
        Description : String(100);
// Hint: This column exists in the table but is skipped to demonstrate 
//       that not all columns need to be mapped
// Category : String(5);
}
