// This is an automatically generated file. Please do not change its contents manually!
import * as _ from './..';
import * as __ from './../_';
export default { name: 'ConditionTypesService' }
export function _ConditionTypeAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class ConditionType extends Base {
        ID?: string;
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
        product?: __.Association.to<Product> | null;
        product_Product?: string | null;
      static actions: {
      }
  };
}
export class ConditionType extends _._cuidAspect(_._managedAspect(_ConditionTypeAspect(__.Entity))) {static drafts: typeof ConditionType}
Object.defineProperty(ConditionType, 'name', { value: 'ConditionTypesService.ConditionTypes' })
export class ConditionTypes extends Array<ConditionType> {static drafts: typeof ConditionType}
Object.defineProperty(ConditionTypes, 'name', { value: 'ConditionTypesService.ConditionTypes' })

export function _ProductAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class Product extends Base {
        Product?: string;
        Description?: string | null;
        to_Description?: __.Association.to.many<ProductDescriptions>;
      static actions: {
      }
  };
}
export class Product extends _ProductAspect(__.Entity) {}
Object.defineProperty(Product, 'name', { value: 'ConditionTypesService.Products' })
export class Products extends Array<Product> {}
Object.defineProperty(Products, 'name', { value: 'ConditionTypesService.Products' })

export function _ProductDescriptionAspect<TBase extends new (...args: any[]) => object>(Base: TBase) {
  return class ProductDescription extends Base {
        Product?: string;
        Language?: string;
        ProductDescription?: string | null;
      static actions: {
      }
  };
}
export class ProductDescription extends _ProductDescriptionAspect(__.Entity) {}
Object.defineProperty(ProductDescription, 'name', { value: 'ConditionTypesService.ProductDescriptions' })
export class ProductDescriptions extends Array<ProductDescription> {}
Object.defineProperty(ProductDescriptions, 'name', { value: 'ConditionTypesService.ProductDescriptions' })
