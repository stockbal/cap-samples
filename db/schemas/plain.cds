@cds.persistence.exists
entity REGIONS {
    key ![REGION]      : String(5);
        ![DESCRIPTION] : String(100);
        // This column exists in the table but is not required
        // ![CATEGORY] : String(5);
}
