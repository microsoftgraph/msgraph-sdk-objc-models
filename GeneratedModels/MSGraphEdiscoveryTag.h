// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet; 
#import "MSGraphEdiscoveryChildSelectability.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryTag : MSGraphEntity

  @property (nullable, nonatomic, setter=setChildSelectability:, getter=childSelectability) MSGraphEdiscoveryChildSelectability* childSelectability;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setTagDescription:, getter=tagDescription) NSString* tagDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setChildTags:, getter=childTags) NSArray* childTags;
    @property (nullable, nonatomic, setter=setParent:, getter=parent) MSGraphEdiscoveryTag* parent;
  
@end
