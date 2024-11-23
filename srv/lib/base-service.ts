import cds, { ApplicationService } from "@sap/cds";

export default abstract class BaseAppService extends ApplicationService {
  protected logger!: ReturnType<typeof cds.log>;

  private getDurationLogger(enable: boolean, activity: string) {
    if (enable) {
      const start = performance.now();
      return () => this.logger.debug(`Duration of ${activity}: ${performance.now() - start}`);
    }
    return () => {};
  }

  protected async runAsync<T>(
    activity: string,
    asyncOp: () => Promise<T>,
    opts?: { measure?: boolean; catchErr?: boolean }
  ) {
    const logDuration = this.getDurationLogger(opts?.measure ?? false, activity);
    this.logger._info && this.logger.info("Before", activity);
    try {
      const result = await asyncOp();
      this.logger._info && this.logger.info("After", activity);
      logDuration();
      return result;
    } catch (error) {
      this.logger.error(activity, "failed with", error);
      if (!opts?.catchErr) throw error;
    }
  }
}
