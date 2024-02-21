export function asArray<T>(obj: any): T[] {
  return Array.isArray(obj) ? obj : [obj];
}