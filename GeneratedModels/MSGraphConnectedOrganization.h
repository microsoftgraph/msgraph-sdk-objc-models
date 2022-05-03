// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySource, MSGraphDirectoryObject; 
#import "MSGraphConnectedOrganizationState.h"


#import "MSGraphEntity.h"

@interface MSGraphConnectedOrganization : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setConnectedOrganizationDescription:, getter=connectedOrganizationDescription) NSString* connectedOrganizationDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setIdentitySources:, getter=identitySources) NSArray* identitySources;
    @property (nullable, nonatomic, setter=setModifiedDateTime:, getter=modifiedDateTime) NSDate* modifiedDateTime;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphConnectedOrganizationState* state;
    @property (nullable, nonatomic, setter=setExternalSponsors:, getter=externalSponsors) NSArray* externalSponsors;
    @property (nullable, nonatomic, setter=setInternalSponsors:, getter=internalSponsors) NSArray* internalSponsors;
  
@end
