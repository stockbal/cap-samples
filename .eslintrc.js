module.exports = {
  root: true,
  extends: [
    "eslint:recommended",
    "plugin:prettier/recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:@typescript-eslint/recommended-type-checked"
  ],
  plugins: ["prettier", "@typescript-eslint"],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    ecmaVersion: 2022,
    project: "./tsconfig.eslint.json",
    tsconfigRootDir: __dirname
  },
  ignorePatterns: ["node_modules/", "gen/", "mta_archives/", "@cds-models/", "coverage/"],
  env: {
    es2022: true,
    node: true,
    jest: true,
    mocha: true
  },
  globals: {
    SELECT: true,
    INSERT: true,
    UPSERT: true,
    UPDATE: true,
    DELETE: true,
    CREATE: true,
    DROP: true,
    CDL: true,
    CQL: true,
    CXL: true,
    cds: true
  },
  rules: {
    "no-console": "off",
    "@typescript-eslint/no-floating-promises": "error",
    "@typescript-eslint/no-misused-promises": "error",
    "@typescript-eslint/no-unused-expressions": ["error", { allowShortCircuit: true }],
    "require-atomic-updates": "off"
  }
};
