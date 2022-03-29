// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEntitlementManagementSettings()
{
    MSDuration* _durationUntilExternalUserDeletedAfterBlocked;
    MSGraphAccessPackageExternalUserLifecycleAction* _externalUserLifecycleAction;
}
@end

@implementation MSGraphEntitlementManagementSettings

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.entitlementManagementSettings";
    }
    return self;
}
- (MSDuration*) durationUntilExternalUserDeletedAfterBlocked
{
    if(!_durationUntilExternalUserDeletedAfterBlocked){
        _durationUntilExternalUserDeletedAfterBlocked = [MSDuration ms_durationFromString: self.dictionary[@"durationUntilExternalUserDeletedAfterBlocked"]];
    }
    return _durationUntilExternalUserDeletedAfterBlocked;
}

- (void) setDurationUntilExternalUserDeletedAfterBlocked: (MSDuration*) val
{
    _durationUntilExternalUserDeletedAfterBlocked = val;
    self.dictionary[@"durationUntilExternalUserDeletedAfterBlocked"] = val.durationString;
}

- (MSGraphAccessPackageExternalUserLifecycleAction*) externalUserLifecycleAction
{
    if(!_externalUserLifecycleAction){
        _externalUserLifecycleAction = [self.dictionary[@"externalUserLifecycleAction"] toMSGraphAccessPackageExternalUserLifecycleAction];
    }
    return _externalUserLifecycleAction;
}

- (void) setExternalUserLifecycleAction: (MSGraphAccessPackageExternalUserLifecycleAction*) val
{
    _externalUserLifecycleAction = val;
    self.dictionary[@"externalUserLifecycleAction"] = val;
}


@end
