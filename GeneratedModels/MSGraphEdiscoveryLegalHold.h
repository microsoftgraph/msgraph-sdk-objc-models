// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphEdiscoverySiteSource, MSGraphEdiscoveryUserSource; 
#import "MSGraphEdiscoveryLegalHoldStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryLegalHold : MSGraphEntity

  @property (nullable, nonatomic, setter=setContentQuery:, getter=contentQuery) NSString* contentQuery;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLegalHoldDescription:, getter=legalHoldDescription) NSString* legalHoldDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setErrors:, getter=errors) NSArray* errors;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEdiscoveryLegalHoldStatus* status;
    @property (nullable, nonatomic, setter=setSiteSources:, getter=siteSources) NSArray* siteSources;
    @property (nullable, nonatomic, setter=setUserSources:, getter=userSources) NSArray* userSources;
  
@end
