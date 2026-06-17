import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    env: {
      CDS_TYPESCRIPT: "true",
    },
    coverage: {
      enabled: true,
      include: ["srv/**/*.ts"],
      exclude: [
        "node_modules/",
        "dist/",
        "**/*.d.ts",
        "**/*.config.*",
        "**/coverage/**",
      ],
    },
    globals: true,
  },
});
