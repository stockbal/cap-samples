import { ApplicationService } from "@sap/cds";

export class BaseService extends ApplicationService {
  /**
   * Retrieves 'drafts' property from the given cds entity
   * @param entity typed entity from CDS model
   * @returns returns drafts definition typed to the given entity
   */
  protected drafts<T extends object>(entity: T): T {
    if ("drafts" in entity) {
      return entity.drafts as T;
    }
    throw new Error("'drafts' not available on given object");
  }
}
