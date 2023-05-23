module.exports = cds.service.impl(async function () {
  const Books = this.entities["Books"];
  const Distributors = this.entities["Distributors"];

  this.after("NEW", Books, async (data) => {
    // manual creation of draft entries for 1:1 composition relations
    await INSERT.into(Distributors.drafts).entries({
      book_ID: data.ID,
      DraftAdministrativeData_DraftUUID: data.DraftAdministrativeData_DraftUUID,
      IsActiveEntity: false,
      HasDraftEntity: false,
      HasActiveEntity: false,
    });
  });
});
