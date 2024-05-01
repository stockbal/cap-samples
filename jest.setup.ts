export default () => {
  process.env.CDS_TYPESCRIPT = "true";
  process.env["cds.log.levels.db"] = "warn";
  process.env["cds.log.levels.cds"] = "warn";
};
