// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSignIn()
{
    NSString* _appDisplayName;
    NSString* _appId;
    NSArray* _appliedConditionalAccessPolicies;
    NSString* _clientAppUsed;
    MSGraphConditionalAccessStatus* _conditionalAccessStatus;
    NSString* _correlationId;
    NSDate* _createdDateTime;
    MSGraphDeviceDetail* _deviceDetail;
    NSString* _ipAddress;
    BOOL _isInteractive;
    MSGraphSignInLocation* _location;
    NSString* _resourceDisplayName;
    NSString* _resourceId;
    MSGraphRiskDetail* _riskDetail;
    NSArray* _riskEventTypes;
    NSArray* _riskEventTypes_v2;
    MSGraphRiskLevel* _riskLevelAggregated;
    MSGraphRiskLevel* _riskLevelDuringSignIn;
    MSGraphRiskState* _riskState;
    MSGraphSignInStatus* _status;
    NSString* _userDisplayName;
    NSString* _userId;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphSignIn

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.signIn";
    }
    return self;
}
- (NSString*) appDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"appDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDisplayName"];
}

- (void) setAppDisplayName: (NSString*) val
{
    self.dictionary[@"appDisplayName"] = val;
}

- (NSString*) appId
{
    if([[NSNull null] isEqual:self.dictionary[@"appId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
}

- (NSArray*) appliedConditionalAccessPolicies
{
    if(!_appliedConditionalAccessPolicies){
        
    NSMutableArray *appliedConditionalAccessPoliciesResult = [NSMutableArray array];
    NSArray *appliedConditionalAccessPolicies = self.dictionary[@"appliedConditionalAccessPolicies"];

    if ([appliedConditionalAccessPolicies isKindOfClass:[NSArray class]]){
        for (id tempAppliedConditionalAccessPolicy in appliedConditionalAccessPolicies){
            [appliedConditionalAccessPoliciesResult addObject:tempAppliedConditionalAccessPolicy];
        }
    }

    _appliedConditionalAccessPolicies = appliedConditionalAccessPoliciesResult;
        
    }
    return _appliedConditionalAccessPolicies;
}

- (void) setAppliedConditionalAccessPolicies: (NSArray*) val
{
    _appliedConditionalAccessPolicies = val;
    self.dictionary[@"appliedConditionalAccessPolicies"] = val;
}

- (NSString*) clientAppUsed
{
    if([[NSNull null] isEqual:self.dictionary[@"clientAppUsed"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientAppUsed"];
}

- (void) setClientAppUsed: (NSString*) val
{
    self.dictionary[@"clientAppUsed"] = val;
}

- (MSGraphConditionalAccessStatus*) conditionalAccessStatus
{
    if(!_conditionalAccessStatus){
        _conditionalAccessStatus = [self.dictionary[@"conditionalAccessStatus"] toMSGraphConditionalAccessStatus];
    }
    return _conditionalAccessStatus;
}

- (void) setConditionalAccessStatus: (MSGraphConditionalAccessStatus*) val
{
    _conditionalAccessStatus = val;
    self.dictionary[@"conditionalAccessStatus"] = val;
}

- (NSString*) correlationId
{
    if([[NSNull null] isEqual:self.dictionary[@"correlationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"correlationId"];
}

- (void) setCorrelationId: (NSString*) val
{
    self.dictionary[@"correlationId"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphDeviceDetail*) deviceDetail
{
    if(!_deviceDetail){
        _deviceDetail = [[MSGraphDeviceDetail alloc] initWithDictionary: self.dictionary[@"deviceDetail"]];
    }
    return _deviceDetail;
}

- (void) setDeviceDetail: (MSGraphDeviceDetail*) val
{
    _deviceDetail = val;
    self.dictionary[@"deviceDetail"] = val;
}

- (NSString*) ipAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"ipAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"ipAddress"];
}

- (void) setIpAddress: (NSString*) val
{
    self.dictionary[@"ipAddress"] = val;
}

- (BOOL) isInteractive
{
    _isInteractive = [self.dictionary[@"isInteractive"] boolValue];
    return _isInteractive;
}

- (void) setIsInteractive: (BOOL) val
{
    _isInteractive = val;
    self.dictionary[@"isInteractive"] = @(val);
}

- (MSGraphSignInLocation*) location
{
    if(!_location){
        _location = [[MSGraphSignInLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphSignInLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (NSString*) resourceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceDisplayName"];
}

- (void) setResourceDisplayName: (NSString*) val
{
    self.dictionary[@"resourceDisplayName"] = val;
}

- (NSString*) resourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}

- (MSGraphRiskDetail*) riskDetail
{
    if(!_riskDetail){
        _riskDetail = [self.dictionary[@"riskDetail"] toMSGraphRiskDetail];
    }
    return _riskDetail;
}

- (void) setRiskDetail: (MSGraphRiskDetail*) val
{
    _riskDetail = val;
    self.dictionary[@"riskDetail"] = val;
}

- (NSArray*) riskEventTypes
{
    if(!_riskEventTypes){
        
    NSMutableArray *riskEventTypesResult = [NSMutableArray array];
    NSArray *riskEventTypes = self.dictionary[@"riskEventTypes"];

    if ([riskEventTypes isKindOfClass:[NSArray class]]){
        for (id tempRiskEventType in riskEventTypes){
            [riskEventTypesResult addObject:tempRiskEventType];
        }
    }

    _riskEventTypes = riskEventTypesResult;
        
    }
    return _riskEventTypes;
}

- (void) setRiskEventTypes: (NSArray*) val
{
    _riskEventTypes = val;
    self.dictionary[@"riskEventTypes"] = val;
}

- (NSArray*) riskEventTypes_v2
{
    if([[NSNull null] isEqual:self.dictionary[@"riskEventTypes_v2"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskEventTypes_v2"];
}

- (void) setRiskEventTypes_v2: (NSArray*) val
{
    self.dictionary[@"riskEventTypes_v2"] = val;
}

- (MSGraphRiskLevel*) riskLevelAggregated
{
    if(!_riskLevelAggregated){
        _riskLevelAggregated = [self.dictionary[@"riskLevelAggregated"] toMSGraphRiskLevel];
    }
    return _riskLevelAggregated;
}

- (void) setRiskLevelAggregated: (MSGraphRiskLevel*) val
{
    _riskLevelAggregated = val;
    self.dictionary[@"riskLevelAggregated"] = val;
}

- (MSGraphRiskLevel*) riskLevelDuringSignIn
{
    if(!_riskLevelDuringSignIn){
        _riskLevelDuringSignIn = [self.dictionary[@"riskLevelDuringSignIn"] toMSGraphRiskLevel];
    }
    return _riskLevelDuringSignIn;
}

- (void) setRiskLevelDuringSignIn: (MSGraphRiskLevel*) val
{
    _riskLevelDuringSignIn = val;
    self.dictionary[@"riskLevelDuringSignIn"] = val;
}

- (MSGraphRiskState*) riskState
{
    if(!_riskState){
        _riskState = [self.dictionary[@"riskState"] toMSGraphRiskState];
    }
    return _riskState;
}

- (void) setRiskState: (MSGraphRiskState*) val
{
    _riskState = val;
    self.dictionary[@"riskState"] = val;
}

- (MSGraphSignInStatus*) status
{
    if(!_status){
        _status = [[MSGraphSignInStatus alloc] initWithDictionary: self.dictionary[@"status"]];
    }
    return _status;
}

- (void) setStatus: (MSGraphSignInStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (NSString*) userId
{
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}


@end
