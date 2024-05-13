import { ApplicationService } from "@sap/cds";
import { Request } from "@sap/cds";
import { NonNullEntity } from "./types/util";

export class BaseService extends ApplicationService {
  /**
   * Registers handler that is executed after the READ event
   */
  protected afterRead<T extends abstract new (...args: any) => any>(
    entity: T,
    handler: (
      data: NonNullEntity<InstanceType<T>>,
      req: Request
    ) => Promise<T | void | Error> | T | void | Error
  ) {
    this.after("READ", entity as any, handler);
  }

  /**
   * Registers handler that is executed after the READ event for each found entry
   */
  protected afterReadEach<T extends abstract new (...args: any) => any>(
    entity: T,
    handler: (
      data: NonNullEntity<InstanceType<T>>,
      req: Request
    ) => T | void | Error
  ) {
    this.after("each", entity as any, handler);
  }
}
