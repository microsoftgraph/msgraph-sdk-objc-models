// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphPermissionType.h"


#import "MSGraphEntity.h"

@interface MSGraphPermissionGrantConditionSet : MSGraphEntity

  @property (nullable, nonatomic, setter=setClientApplicationIds:, getter=clientApplicationIds) NSArray* clientApplicationIds;
    @property (nullable, nonatomic, setter=setClientApplicationPublisherIds:, getter=clientApplicationPublisherIds) NSArray* clientApplicationPublisherIds;
    @property (nonatomic, setter=setClientApplicationsFromVerifiedPublisherOnly:, getter=clientApplicationsFromVerifiedPublisherOnly) BOOL clientApplicationsFromVerifiedPublisherOnly;
    @property (nullable, nonatomic, setter=setClientApplicationTenantIds:, getter=clientApplicationTenantIds) NSArray* clientApplicationTenantIds;
    @property (nullable, nonatomic, setter=setPermissionClassification:, getter=permissionClassification) NSString* permissionClassification;
    @property (nullable, nonatomic, setter=setPermissions:, getter=permissions) NSArray* permissions;
    @property (nullable, nonatomic, setter=setPermissionType:, getter=permissionType) MSGraphPermissionType* permissionType;
    @property (nullable, nonatomic, setter=setResourceApplication:, getter=resourceApplication) NSString* resourceApplication;
  
@end
