export default () => {
  process.env.CDS_TYPESCRIPT = "true";
  process.env.NODE_OPTIONS = "--experimental-vm-modules";
  process.env["cds.log.levels.db"] = "warn";
  process.env["cds.log.levels.cds"] = "warn";
};
