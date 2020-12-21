// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceCompliancePolicyState()
{
    NSString* _displayName;
    MSGraphPolicyPlatformType* _platformType;
    int32_t _settingCount;
    NSArray* _settingStates;
    MSGraphComplianceStatus* _state;
    int32_t _version;
}
@end

@implementation MSGraphDeviceCompliancePolicyState

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceCompliancePolicyState";
    }
    return self;
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

- (MSGraphPolicyPlatformType*) platformType
{
    if(!_platformType){
        _platformType = [self.dictionary[@"platformType"] toMSGraphPolicyPlatformType];
    }
    return _platformType;
}

- (void) setPlatformType: (MSGraphPolicyPlatformType*) val
{
    _platformType = val;
    self.dictionary[@"platformType"] = val;
}

- (int32_t) settingCount
{
    _settingCount = [self.dictionary[@"settingCount"] intValue];
    return _settingCount;
}

- (void) setSettingCount: (int32_t) val
{
    _settingCount = val;
    self.dictionary[@"settingCount"] = @(val);
}

- (NSArray*) settingStates
{
    if(!_settingStates){
        
    NSMutableArray *settingStatesResult = [NSMutableArray array];
    NSArray *settingStates = self.dictionary[@"settingStates"];

    if ([settingStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceCompliancePolicySettingState in settingStates){
            [settingStatesResult addObject:tempDeviceCompliancePolicySettingState];
        }
    }

    _settingStates = settingStatesResult;
        
    }
    return _settingStates;
}

- (void) setSettingStates: (NSArray*) val
{
    _settingStates = val;
    self.dictionary[@"settingStates"] = val;
}

- (MSGraphComplianceStatus*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphComplianceStatus];
    }
    return _state;
}

- (void) setState: (MSGraphComplianceStatus*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (int32_t) version
{
    _version = [self.dictionary[@"version"] intValue];
    return _version;
}

- (void) setVersion: (int32_t) val
{
    _version = val;
    self.dictionary[@"version"] = @(val);
}


@end
