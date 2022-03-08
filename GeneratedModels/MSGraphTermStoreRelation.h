// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermStoreTerm, MSGraphTermStoreSet; 
#import "MSGraphTermStoreRelationType.h"


#import "MSGraphEntity.h"

@interface MSGraphTermStoreRelation : MSGraphEntity

  @property (nullable, nonatomic, setter=setRelationship:, getter=relationship) MSGraphTermStoreRelationType* relationship;
    @property (nullable, nonatomic, setter=setFromTerm:, getter=fromTerm) MSGraphTermStoreTerm* fromTerm;
    @property (nullable, nonatomic, setter=setSet:, getter=set) MSGraphTermStoreSet* set;
    @property (nullable, nonatomic, setter=setToTerm:, getter=toTerm) MSGraphTermStoreTerm* toTerm;
  
@end
