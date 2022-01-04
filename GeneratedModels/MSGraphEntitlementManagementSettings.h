// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSDuration; 
#import "MSGraphAccessPackageExternalUserLifecycleAction.h"


#import "MSGraphEntity.h"

@interface MSGraphEntitlementManagementSettings : MSGraphEntity

  @property (nullable, nonatomic, setter=setDurationUntilExternalUserDeletedAfterBlocked:, getter=durationUntilExternalUserDeletedAfterBlocked) MSDuration* durationUntilExternalUserDeletedAfterBlocked;
    @property (nullable, nonatomic, setter=setExternalUserLifecycleAction:, getter=externalUserLifecycleAction) MSGraphAccessPackageExternalUserLifecycleAction* externalUserLifecycleAction;
  
@end
