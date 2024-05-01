// This is an automatically generated file. Please do not change its contents manually!
import * as __ from './../../_';
import * as _ from './../..';
export function _BookAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class Book extends Base {
        title?: string | null;
        stock?: number | null;
        publishedOn?: __.CdsDate | null;
      static readonly actions: Record<never, never>
  };
}
export class Book extends _._managedAspect(_._cuidAspect(_BookAspect(__.Entity))) {static drafts: typeof Book}
Object.defineProperty(Book, 'name', { value: 'my.bookshop.Books' })
export class Books extends Array<Book> {static drafts: typeof Book
$count?: number}
Object.defineProperty(Books, 'name', { value: 'my.bookshop.Books' })
