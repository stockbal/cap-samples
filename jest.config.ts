import type { Config } from "jest";

const config: Config = {
  preset: "ts-jest",
  testTimeout: 20000,
  coverageThreshold: {
    global: {
      branches: 100,
      functions: 100,
      lines: 100,
      statements: 100,
    },
  },
  rootDir: "./srv",
  globalSetup: "../jest.setup.ts",
  collectCoverageFrom: ["<rootDir>/**/*.ts"],
  coveragePathIgnorePatterns: [
    "<rootDir>/../@cds-models/",
    "<rootDir>/types/",
  ],
  coverageDirectory: "../coverage",
  verbose: true,
  collectCoverage: true,
  silent: true,
};

export default config;
