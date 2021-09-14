// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermStoreSet; 
#import "MSGraphTermStoreTermGroupScope.h"


#import "MSGraphEntity.h"

@interface MSGraphTermStoreGroup : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setGroupDescription:, getter=groupDescription) NSString* groupDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setParentSiteId:, getter=parentSiteId) NSString* parentSiteId;
    @property (nullable, nonatomic, setter=setScope:, getter=scope) MSGraphTermStoreTermGroupScope* scope;
    @property (nullable, nonatomic, setter=setSets:, getter=sets) NSArray* sets;
  
@end
