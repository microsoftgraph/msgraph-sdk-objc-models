// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermStoreLocalizedName, MSGraphKeyValue, MSGraphTermStoreTerm, MSGraphTermStoreGroup, MSGraphTermStoreRelation; 


#import "MSGraphEntity.h"

@interface MSGraphTermStoreSet : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setSetDescription:, getter=setDescription) NSString* setDescription;
    @property (nullable, nonatomic, setter=setLocalizedNames:, getter=localizedNames) NSArray* localizedNames;
    @property (nullable, nonatomic, setter=setProperties:, getter=properties) NSArray* properties;
    @property (nullable, nonatomic, setter=setChildren:, getter=children) NSArray* children;
    @property (nonnull, nonatomic, setter=setParentGroup:, getter=parentGroup) MSGraphTermStoreGroup* parentGroup;
    @property (nullable, nonatomic, setter=setRelations:, getter=relations) NSArray* relations;
    @property (nullable, nonatomic, setter=setTerms:, getter=terms) NSArray* terms;
  
@end
