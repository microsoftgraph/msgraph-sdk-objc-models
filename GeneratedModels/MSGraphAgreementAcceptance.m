// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreementAcceptance()
{
    NSString* _agreementFileId;
    NSString* _agreementId;
    NSString* _deviceDisplayName;
    NSString* _deviceId;
    NSString* _deviceOSType;
    NSString* _deviceOSVersion;
    NSDate* _expirationDateTime;
    NSDate* _recordedDateTime;
    MSGraphAgreementAcceptanceState* _state;
    NSString* _userDisplayName;
    NSString* _userEmail;
    NSString* _userId;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphAgreementAcceptance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.agreementAcceptance";
    }
    return self;
}
- (NSString*) agreementFileId
{
    if([[NSNull null] isEqual:self.dictionary[@"agreementFileId"]])
    {
        return nil;
    }   
    return self.dictionary[@"agreementFileId"];
}

- (void) setAgreementFileId: (NSString*) val
{
    self.dictionary[@"agreementFileId"] = val;
}

- (NSString*) agreementId
{
    if([[NSNull null] isEqual:self.dictionary[@"agreementId"]])
    {
        return nil;
    }   
    return self.dictionary[@"agreementId"];
}

- (void) setAgreementId: (NSString*) val
{
    self.dictionary[@"agreementId"] = val;
}

- (NSString*) deviceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceDisplayName"];
}

- (void) setDeviceDisplayName: (NSString*) val
{
    self.dictionary[@"deviceDisplayName"] = val;
}

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
}

- (NSString*) deviceOSType
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceOSType"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceOSType"];
}

- (void) setDeviceOSType: (NSString*) val
{
    self.dictionary[@"deviceOSType"] = val;
}

- (NSString*) deviceOSVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceOSVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceOSVersion"];
}

- (void) setDeviceOSVersion: (NSString*) val
{
    self.dictionary[@"deviceOSVersion"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSDate*) recordedDateTime
{
    if(!_recordedDateTime){
        _recordedDateTime = [NSDate ms_dateFromString: self.dictionary[@"recordedDateTime"]];
    }
    return _recordedDateTime;
}

- (void) setRecordedDateTime: (NSDate*) val
{
    _recordedDateTime = val;
    self.dictionary[@"recordedDateTime"] = [val ms_toString];
}

- (MSGraphAgreementAcceptanceState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAgreementAcceptanceState];
    }
    return _state;
}

- (void) setState: (MSGraphAgreementAcceptanceState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
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

- (NSString*) userEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"userEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"userEmail"];
}

- (void) setUserEmail: (NSString*) val
{
    self.dictionary[@"userEmail"] = val;
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
