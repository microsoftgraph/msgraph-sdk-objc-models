// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsPstnCallLogRow()
{
    MSGraphCallRecordsPstnCallDurationSource* _callDurationSource;
    NSString* _calleeNumber;
    NSString* _callerNumber;
    NSString* _callId;
    NSString* _callType;
    Decimal* _charge;
    NSString* _conferenceId;
    Decimal* _connectionCharge;
    NSString* _currency;
    NSString* _destinationContext;
    NSString* _destinationName;
    int32_t _duration;
    NSDate* _endDateTime;
    NSString* _pstnCallLogRowId;
    NSString* _inventoryType;
    NSString* _licenseCapability;
    NSString* _operator;
    NSDate* _startDateTime;
    NSString* _tenantCountryCode;
    NSString* _usageCountryCode;
    NSString* _userDisplayName;
    NSString* _userId;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphCallRecordsPstnCallLogRow

- (MSGraphCallRecordsPstnCallDurationSource*) callDurationSource
{
    if(!_callDurationSource){
        _callDurationSource = [self.dictionary[@"callDurationSource"] toMSGraphCallRecordsPstnCallDurationSource];
    }
    return _callDurationSource;
}

- (void) setCallDurationSource: (MSGraphCallRecordsPstnCallDurationSource*) val
{
    _callDurationSource = val;
    self.dictionary[@"callDurationSource"] = val;
}

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

- (NSString*) callId
{
    if([[NSNull null] isEqual:self.dictionary[@"callId"]])
    {
        return nil;
    }   
    return self.dictionary[@"callId"];
}

- (void) setCallId: (NSString*) val
{
    self.dictionary[@"callId"] = val;
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

- (Decimal*) charge
{
    if(!_charge){
        _charge = [self.dictionary[@"charge"] ];
    }
    return _charge;
}

- (void) setCharge: (Decimal*) val
{
    _charge = val;
    self.dictionary[@"charge"] = val;
}

- (NSString*) conferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"conferenceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conferenceId"];
}

- (void) setConferenceId: (NSString*) val
{
    self.dictionary[@"conferenceId"] = val;
}

- (Decimal*) connectionCharge
{
    if(!_connectionCharge){
        _connectionCharge = [self.dictionary[@"connectionCharge"] ];
    }
    return _connectionCharge;
}

- (void) setConnectionCharge: (Decimal*) val
{
    _connectionCharge = val;
    self.dictionary[@"connectionCharge"] = val;
}

- (NSString*) currency
{
    if([[NSNull null] isEqual:self.dictionary[@"currency"]])
    {
        return nil;
    }   
    return self.dictionary[@"currency"];
}

- (void) setCurrency: (NSString*) val
{
    self.dictionary[@"currency"] = val;
}

- (NSString*) destinationContext
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationContext"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationContext"];
}

- (void) setDestinationContext: (NSString*) val
{
    self.dictionary[@"destinationContext"] = val;
}

- (NSString*) destinationName
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationName"];
}

- (void) setDestinationName: (NSString*) val
{
    self.dictionary[@"destinationName"] = val;
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

- (NSString*) pstnCallLogRowId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setPstnCallLogRowId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) inventoryType
{
    if([[NSNull null] isEqual:self.dictionary[@"inventoryType"]])
    {
        return nil;
    }   
    return self.dictionary[@"inventoryType"];
}

- (void) setInventoryType: (NSString*) val
{
    self.dictionary[@"inventoryType"] = val;
}

- (NSString*) licenseCapability
{
    if([[NSNull null] isEqual:self.dictionary[@"licenseCapability"]])
    {
        return nil;
    }   
    return self.dictionary[@"licenseCapability"];
}

- (void) setLicenseCapability: (NSString*) val
{
    self.dictionary[@"licenseCapability"] = val;
}

- (NSString*) operator
{
    if([[NSNull null] isEqual:self.dictionary[@"operator"]])
    {
        return nil;
    }   
    return self.dictionary[@"operator"];
}

- (void) setOperator: (NSString*) val
{
    self.dictionary[@"operator"] = val;
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

- (NSString*) tenantCountryCode
{
    if([[NSNull null] isEqual:self.dictionary[@"tenantCountryCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"tenantCountryCode"];
}

- (void) setTenantCountryCode: (NSString*) val
{
    self.dictionary[@"tenantCountryCode"] = val;
}

- (NSString*) usageCountryCode
{
    if([[NSNull null] isEqual:self.dictionary[@"usageCountryCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"usageCountryCode"];
}

- (void) setUsageCountryCode: (NSString*) val
{
    self.dictionary[@"usageCountryCode"] = val;
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
