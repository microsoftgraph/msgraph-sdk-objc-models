// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRiskDetection()
{
    MSGraphActivityType* _activity;
    NSDate* _activityDateTime;
    NSString* _additionalInfo;
    NSString* _correlationId;
    NSDate* _detectedDateTime;
    MSGraphRiskDetectionTimingType* _detectionTimingType;
    NSString* _ipAddress;
    NSDate* _lastUpdatedDateTime;
    MSGraphSignInLocation* _location;
    NSString* _requestId;
    MSGraphRiskDetail* _riskDetail;
    NSString* _riskEventType;
    MSGraphRiskLevel* _riskLevel;
    MSGraphRiskState* _riskState;
    NSString* _source;
    MSGraphTokenIssuerType* _tokenIssuerType;
    NSString* _userDisplayName;
    NSString* _userId;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphRiskDetection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.riskDetection";
    }
    return self;
}
- (MSGraphActivityType*) activity
{
    if(!_activity){
        _activity = [self.dictionary[@"activity"] toMSGraphActivityType];
    }
    return _activity;
}

- (void) setActivity: (MSGraphActivityType*) val
{
    _activity = val;
    self.dictionary[@"activity"] = val;
}

- (NSDate*) activityDateTime
{
    if(!_activityDateTime){
        _activityDateTime = [NSDate ms_dateFromString: self.dictionary[@"activityDateTime"]];
    }
    return _activityDateTime;
}

- (void) setActivityDateTime: (NSDate*) val
{
    _activityDateTime = val;
    self.dictionary[@"activityDateTime"] = [val ms_toString];
}

- (NSString*) additionalInfo
{
    if([[NSNull null] isEqual:self.dictionary[@"additionalInfo"]])
    {
        return nil;
    }   
    return self.dictionary[@"additionalInfo"];
}

- (void) setAdditionalInfo: (NSString*) val
{
    self.dictionary[@"additionalInfo"] = val;
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

- (NSDate*) detectedDateTime
{
    if(!_detectedDateTime){
        _detectedDateTime = [NSDate ms_dateFromString: self.dictionary[@"detectedDateTime"]];
    }
    return _detectedDateTime;
}

- (void) setDetectedDateTime: (NSDate*) val
{
    _detectedDateTime = val;
    self.dictionary[@"detectedDateTime"] = [val ms_toString];
}

- (MSGraphRiskDetectionTimingType*) detectionTimingType
{
    if(!_detectionTimingType){
        _detectionTimingType = [self.dictionary[@"detectionTimingType"] toMSGraphRiskDetectionTimingType];
    }
    return _detectionTimingType;
}

- (void) setDetectionTimingType: (MSGraphRiskDetectionTimingType*) val
{
    _detectionTimingType = val;
    self.dictionary[@"detectionTimingType"] = val;
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

- (NSDate*) lastUpdatedDateTime
{
    if(!_lastUpdatedDateTime){
        _lastUpdatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastUpdatedDateTime"]];
    }
    return _lastUpdatedDateTime;
}

- (void) setLastUpdatedDateTime: (NSDate*) val
{
    _lastUpdatedDateTime = val;
    self.dictionary[@"lastUpdatedDateTime"] = [val ms_toString];
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

- (NSString*) requestId
{
    if([[NSNull null] isEqual:self.dictionary[@"requestId"]])
    {
        return nil;
    }   
    return self.dictionary[@"requestId"];
}

- (void) setRequestId: (NSString*) val
{
    self.dictionary[@"requestId"] = val;
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

- (NSString*) riskEventType
{
    if([[NSNull null] isEqual:self.dictionary[@"riskEventType"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskEventType"];
}

- (void) setRiskEventType: (NSString*) val
{
    self.dictionary[@"riskEventType"] = val;
}

- (MSGraphRiskLevel*) riskLevel
{
    if(!_riskLevel){
        _riskLevel = [self.dictionary[@"riskLevel"] toMSGraphRiskLevel];
    }
    return _riskLevel;
}

- (void) setRiskLevel: (MSGraphRiskLevel*) val
{
    _riskLevel = val;
    self.dictionary[@"riskLevel"] = val;
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

- (NSString*) source
{
    if([[NSNull null] isEqual:self.dictionary[@"source"]])
    {
        return nil;
    }   
    return self.dictionary[@"source"];
}

- (void) setSource: (NSString*) val
{
    self.dictionary[@"source"] = val;
}

- (MSGraphTokenIssuerType*) tokenIssuerType
{
    if(!_tokenIssuerType){
        _tokenIssuerType = [self.dictionary[@"tokenIssuerType"] toMSGraphTokenIssuerType];
    }
    return _tokenIssuerType;
}

- (void) setTokenIssuerType: (MSGraphTokenIssuerType*) val
{
    _tokenIssuerType = val;
    self.dictionary[@"tokenIssuerType"] = val;
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
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
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
