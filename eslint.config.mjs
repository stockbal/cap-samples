import eslint from "@eslint/js";
import cds from "@sap/cds/eslint.config.mjs";
import cdsPlugin from "@sap/eslint-plugin-cds";
import prettierPlugin from "eslint-plugin-prettier";
import globals from "globals";
import tseslint from "typescript-eslint";

export default [
  {
    ignores: [
      "gen/",
      "**/dist/",
      "app/**/*.js",
      "coverage/",
      "jest.config.ts",
      "jest.setup.ts",
    ],
  },
  cdsPlugin.configs.recommended,
  {
    rules: {
      "@sap/cds/start-elements-lowercase": ["warn", "show"],
      "@sap/cds/start-entities-uppercase": ["warn", "show"],
      "@sap/cds/valid-csv-header": ["warn", "show"],
      "@sap/cds/auth-no-empty-restrictions": ["error", "show"],
      "@sap/cds/auth-use-requires": ["warn", "show"],
      "@sap/cds/no-db-keywords": ["warn", "show"],
    },
    plugins: {
      "@sap/cds": cdsPlugin,
    },
  },
  ...[eslint.configs.recommended, ...tseslint.configs.recommended].map(
    (conf) => ({
      ...conf,
      files: ["**/*.ts"],
    })
  ),
  ...cds.recommended.map((conf) => {
    if (conf.files?.length)
      conf.files = conf.files.map((f) => f.replace(".js", ".ts"));
    return conf;
  }),
  {
    files: ["**/*.ts"],
    rules: {
      "no-console": "off",
      "@typescript-eslint/no-floating-promises": "error",
      "@typescript-eslint/no-misused-promises": "error",
      "@typescript-eslint/no-unused-expressions": "off",
      "require-atomic-updates": "off",
      "no-unused-vars": "off",
      "@typescript-eslint/no-unused-vars": [
        "error",
        {
          args: "all",
          argsIgnorePattern: "^_",
          caughtErrors: "all",
          caughtErrorsIgnorePattern: "^_",
          destructuredArrayIgnorePattern: "^_",
          varsIgnorePattern: "^_",
          ignoreRestSiblings: true,
        },
      ],
      "prettier/prettier": "error",
    },
    languageOptions: {
      globals: {
        ...globals.node,
      },
      parserOptions: {
        projectService: true,
        tsconfigRootDir: import.meta.dirname,
      },
    },
    plugins: {
      prettier: prettierPlugin,
    },
  },
];
