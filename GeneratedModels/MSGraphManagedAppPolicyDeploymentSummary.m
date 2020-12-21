// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppPolicyDeploymentSummary()
{
    int32_t _configurationDeployedUserCount;
    NSArray* _configurationDeploymentSummaryPerApp;
    NSString* _displayName;
    NSDate* _lastRefreshTime;
    NSString* _version;
}
@end

@implementation MSGraphManagedAppPolicyDeploymentSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedAppPolicyDeploymentSummary";
    }
    return self;
}
- (int32_t) configurationDeployedUserCount
{
    _configurationDeployedUserCount = [self.dictionary[@"configurationDeployedUserCount"] intValue];
    return _configurationDeployedUserCount;
}

- (void) setConfigurationDeployedUserCount: (int32_t) val
{
    _configurationDeployedUserCount = val;
    self.dictionary[@"configurationDeployedUserCount"] = @(val);
}

- (NSArray*) configurationDeploymentSummaryPerApp
{
    if(!_configurationDeploymentSummaryPerApp){
        
    NSMutableArray *configurationDeploymentSummaryPerAppResult = [NSMutableArray array];
    NSArray *configurationDeploymentSummaryPerApp = self.dictionary[@"configurationDeploymentSummaryPerApp"];

    if ([configurationDeploymentSummaryPerApp isKindOfClass:[NSArray class]]){
        for (id tempManagedAppPolicyDeploymentSummaryPerApp in configurationDeploymentSummaryPerApp){
            [configurationDeploymentSummaryPerAppResult addObject:tempManagedAppPolicyDeploymentSummaryPerApp];
        }
    }

    _configurationDeploymentSummaryPerApp = configurationDeploymentSummaryPerAppResult;
        
    }
    return _configurationDeploymentSummaryPerApp;
}

- (void) setConfigurationDeploymentSummaryPerApp: (NSArray*) val
{
    _configurationDeploymentSummaryPerApp = val;
    self.dictionary[@"configurationDeploymentSummaryPerApp"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) lastRefreshTime
{
    if(!_lastRefreshTime){
        _lastRefreshTime = [NSDate ms_dateFromString: self.dictionary[@"lastRefreshTime"]];
    }
    return _lastRefreshTime;
}

- (void) setLastRefreshTime: (NSDate*) val
{
    _lastRefreshTime = val;
    self.dictionary[@"lastRefreshTime"] = [val ms_toString];
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}


@end
