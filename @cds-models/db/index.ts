// This is an automatically generated file. Please do not change its contents manually!
import * as __ from './../_';
import * as _ from './..';
import * as _API_PRODUCT from './../API_PRODUCT';
export function _ConditionTypeAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class ConditionType extends Base {
        product?: __.Association.to<ExtProduct> | null;
        product_Product?: string | null;
      static actions: {
      }
  };
}
export class ConditionType extends _._cuidAspect(_._managedAspect(_ConditionTypeAspect(__.Entity))) {static drafts: typeof ConditionType}
Object.defineProperty(ConditionType, 'name', { value: 'db.ConditionTypes' })
export class ConditionTypes extends Array<ConditionType> {static drafts: typeof ConditionType}
Object.defineProperty(ConditionTypes, 'name', { value: 'db.ConditionTypes' })

export function _ExtProductAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class ExtProduct extends Base {
        Product?: string;
        Description?: string | null;
        to_Description?: __.Association.to.many<_API_PRODUCT.A_ProductDescription_>;
      static actions: {
      }
  };
}
export class ExtProduct extends _ExtProductAspect(__.Entity) {}
Object.defineProperty(ExtProduct, 'name', { value: 'db.Products' })
export class ExtProducts extends Array<ExtProduct> {}
Object.defineProperty(ExtProducts, 'name', { value: 'db.Products' })
