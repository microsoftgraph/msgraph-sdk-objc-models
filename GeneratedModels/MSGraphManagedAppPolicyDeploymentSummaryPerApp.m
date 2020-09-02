// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppPolicyDeploymentSummaryPerApp()
{
    int32_t _configurationAppliedUserCount;
    MSGraphMobileAppIdentifier* _mobileAppIdentifier;
}
@end

@implementation MSGraphManagedAppPolicyDeploymentSummaryPerApp

- (int32_t) configurationAppliedUserCount
{
    _configurationAppliedUserCount = [self.dictionary[@"configurationAppliedUserCount"] intValue];
    return _configurationAppliedUserCount;
}

- (void) setConfigurationAppliedUserCount: (int32_t) val
{
    _configurationAppliedUserCount = val;
    self.dictionary[@"configurationAppliedUserCount"] = @(val);
}

- (MSGraphMobileAppIdentifier*) mobileAppIdentifier
{
    if(!_mobileAppIdentifier){
        _mobileAppIdentifier = [[MSGraphMobileAppIdentifier alloc] initWithDictionary: self.dictionary[@"mobileAppIdentifier"]];
    }
    return _mobileAppIdentifier;
}

- (void) setMobileAppIdentifier: (MSGraphMobileAppIdentifier*) val
{
    _mobileAppIdentifier = val;
    self.dictionary[@"mobileAppIdentifier"] = val;
}

@end
