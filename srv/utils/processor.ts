import { removeLeadingZeros } from "./formatter";

export class DataProcessor {
  constructor(private readonly data: string[]) {}
  execute() {
    const adjustedData: string[] = [];
    for (let item of this.data) {
      console.log(`Processing item: ${item}`);
      item = removeLeadingZeros(item);
      console.log(`Processed item: ${item}`);
      adjustedData.push(item);
    }
    return adjustedData;
  }
}
