import { Request } from "@sap/cds";

export async function genid(req: Request<{ ID: string }>) {
  if (req.data.ID) return;
  // @ts-ignore
  const { id } = await SELECT.one.from(req.target).columns("max(ID) as id");
  req.data.ID = id + 4; // Note: that is not safe! ok for this sample only.
}
