// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphEducationExternalSource.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationOrganization : MSGraphEntity

  @property (nullable, nonatomic, setter=setEducationOrganizationDescription:, getter=educationOrganizationDescription) NSString* educationOrganizationDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExternalSource:, getter=externalSource) MSGraphEducationExternalSource* externalSource;
  
@end
