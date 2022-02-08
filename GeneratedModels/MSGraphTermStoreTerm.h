// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermStoreLocalizedDescription, MSGraphTermStoreLocalizedLabel, MSGraphKeyValue, MSGraphTermStoreRelation, MSGraphTermStoreSet; 


#import "MSGraphEntity.h"

@interface MSGraphTermStoreTerm : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDescriptions:, getter=descriptions) NSArray* descriptions;
    @property (nullable, nonatomic, setter=setLabels:, getter=labels) NSArray* labels;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setProperties:, getter=properties) NSArray* properties;
    @property (nullable, nonatomic, setter=setChildren:, getter=children) NSArray* children;
    @property (nullable, nonatomic, setter=setRelations:, getter=relations) NSArray* relations;
    @property (nullable, nonatomic, setter=setSet:, getter=set) MSGraphTermStoreSet* set;
  
@end
