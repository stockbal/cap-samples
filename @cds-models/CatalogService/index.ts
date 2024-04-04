// This is an automatically generated file. Please do not change its contents manually!
import * as _ from './..';
import * as __ from './../_';
export default { name: 'CatalogService' }
export function _BookAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class Book extends Base {
        createdAt?: string | null;
    /**
    * Canonical user ID
    */
        createdBy?: _.User | null;
        modifiedAt?: string | null;
    /**
    * Canonical user ID
    */
        modifiedBy?: _.User | null;
        ID?: string;
        title?: string | null;
        stock?: number | null;
        publishedOn?: string | null;
      static actions: {
      }
  };
}
export class Book extends _._managedAspect(_._cuidAspect(_BookAspect(__.Entity))) {static drafts: typeof Book}
Object.defineProperty(Book, 'name', { value: 'CatalogService.Books' })
export class Books extends Array<Book> {static drafts: typeof Book}
Object.defineProperty(Books, 'name', { value: 'CatalogService.Books' })
