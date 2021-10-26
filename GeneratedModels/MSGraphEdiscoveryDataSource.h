// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet; 


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryDataSource : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
  
@end
