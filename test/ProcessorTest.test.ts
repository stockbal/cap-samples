import { DataProcessor } from "../srv/utils/processor.js";

describe("Processor Test", () => {
  it("should remove leading zeros from data", async () => {
    expect(new DataProcessor(["00123", "00045", "67890"]).execute()).toEqual([
      "123",
      "45",
      "67890",
    ]);
  });
});
