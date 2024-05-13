export type DraftEntity = {
  DraftAdministrativeData?: {
    DraftUUID: string;
  };
  DraftAdministrativeData_UUID?: string;
  IsActiveEntity: boolean;
  HasActiveEntity: boolean;
  HasDraftEntity: boolean;
};

/**
 * Removes optional and null|undefined from all properties in T
 */
export type NonNullEntity<T> = { [P in keyof T]-?: NonNullable<T[P]> };
