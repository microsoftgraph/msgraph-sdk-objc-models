// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsDirectRoutingLogRow()
{
    NSString* _calleeNumber;
    int32_t _callEndSubReason;
    NSString* _callerNumber;
    NSString* _callType;
    NSString* _correlationId;
    int32_t _duration;
    NSDate* _endDateTime;
    NSDate* _failureDateTime;
    int32_t _finalSipCode;
    NSString* _finalSipCodePhrase;
    NSString* _directRoutingLogRowId;
    NSDate* _inviteDateTime;
    BOOL _mediaBypassEnabled;
    NSString* _mediaPathLocation;
    NSString* _signalingLocation;
    NSDate* _startDateTime;
    BOOL _successfulCall;
    NSString* _trunkFullyQualifiedDomainName;
    NSString* _userDisplayName;
    NSString* _userId;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphCallRecordsDirectRoutingLogRow

- (NSString*) calleeNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"calleeNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"calleeNumber"];
}

- (void) setCalleeNumber: (NSString*) val
{
    self.dictionary[@"calleeNumber"] = val;
}

- (int32_t) callEndSubReason
{
    _callEndSubReason = [self.dictionary[@"callEndSubReason"] intValue];
    return _callEndSubReason;
}

- (void) setCallEndSubReason: (int32_t) val
{
    _callEndSubReason = val;
    self.dictionary[@"callEndSubReason"] = @(val);
}

- (NSString*) callerNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"callerNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"callerNumber"];
}

- (void) setCallerNumber: (NSString*) val
{
    self.dictionary[@"callerNumber"] = val;
}

- (NSString*) callType
{
    if([[NSNull null] isEqual:self.dictionary[@"callType"]])
    {
        return nil;
    }   
    return self.dictionary[@"callType"];
}

- (void) setCallType: (NSString*) val
{
    self.dictionary[@"callType"] = val;
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

- (int32_t) duration
{
    _duration = [self.dictionary[@"duration"] intValue];
    return _duration;
}

- (void) setDuration: (int32_t) val
{
    _duration = val;
    self.dictionary[@"duration"] = @(val);
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (NSDate*) failureDateTime
{
    if(!_failureDateTime){
        _failureDateTime = [NSDate ms_dateFromString: self.dictionary[@"failureDateTime"]];
    }
    return _failureDateTime;
}

- (void) setFailureDateTime: (NSDate*) val
{
    _failureDateTime = val;
    self.dictionary[@"failureDateTime"] = [val ms_toString];
}

- (int32_t) finalSipCode
{
    _finalSipCode = [self.dictionary[@"finalSipCode"] intValue];
    return _finalSipCode;
}

- (void) setFinalSipCode: (int32_t) val
{
    _finalSipCode = val;
    self.dictionary[@"finalSipCode"] = @(val);
}

- (NSString*) finalSipCodePhrase
{
    if([[NSNull null] isEqual:self.dictionary[@"finalSipCodePhrase"]])
    {
        return nil;
    }   
    return self.dictionary[@"finalSipCodePhrase"];
}

- (void) setFinalSipCodePhrase: (NSString*) val
{
    self.dictionary[@"finalSipCodePhrase"] = val;
}

- (NSString*) directRoutingLogRowId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setDirectRoutingLogRowId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSDate*) inviteDateTime
{
    if(!_inviteDateTime){
        _inviteDateTime = [NSDate ms_dateFromString: self.dictionary[@"inviteDateTime"]];
    }
    return _inviteDateTime;
}

- (void) setInviteDateTime: (NSDate*) val
{
    _inviteDateTime = val;
    self.dictionary[@"inviteDateTime"] = [val ms_toString];
}

- (BOOL) mediaBypassEnabled
{
    _mediaBypassEnabled = [self.dictionary[@"mediaBypassEnabled"] boolValue];
    return _mediaBypassEnabled;
}

- (void) setMediaBypassEnabled: (BOOL) val
{
    _mediaBypassEnabled = val;
    self.dictionary[@"mediaBypassEnabled"] = @(val);
}

- (NSString*) mediaPathLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaPathLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaPathLocation"];
}

- (void) setMediaPathLocation: (NSString*) val
{
    self.dictionary[@"mediaPathLocation"] = val;
}

- (NSString*) signalingLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"signalingLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"signalingLocation"];
}

- (void) setSignalingLocation: (NSString*) val
{
    self.dictionary[@"signalingLocation"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (BOOL) successfulCall
{
    _successfulCall = [self.dictionary[@"successfulCall"] boolValue];
    return _successfulCall;
}

- (void) setSuccessfulCall: (BOOL) val
{
    _successfulCall = val;
    self.dictionary[@"successfulCall"] = @(val);
}

- (NSString*) trunkFullyQualifiedDomainName
{
    if([[NSNull null] isEqual:self.dictionary[@"trunkFullyQualifiedDomainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"trunkFullyQualifiedDomainName"];
}

- (void) setTrunkFullyQualifiedDomainName: (NSString*) val
{
    self.dictionary[@"trunkFullyQualifiedDomainName"] = val;
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
