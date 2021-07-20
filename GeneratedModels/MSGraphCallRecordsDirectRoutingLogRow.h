// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphCallRecordsDirectRoutingLogRow : MSObject

@property (nullable, nonatomic, setter=setCalleeNumber:, getter=calleeNumber) NSString* calleeNumber;
@property (nonatomic, setter=setCallEndSubReason:, getter=callEndSubReason) int32_t callEndSubReason;
@property (nullable, nonatomic, setter=setCallerNumber:, getter=callerNumber) NSString* callerNumber;
@property (nullable, nonatomic, setter=setCallType:, getter=callType) NSString* callType;
@property (nullable, nonatomic, setter=setCorrelationId:, getter=correlationId) NSString* correlationId;
@property (nonatomic, setter=setDuration:, getter=duration) int32_t duration;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setFailureDateTime:, getter=failureDateTime) NSDate* failureDateTime;
@property (nonatomic, setter=setFinalSipCode:, getter=finalSipCode) int32_t finalSipCode;
@property (nullable, nonatomic, setter=setFinalSipCodePhrase:, getter=finalSipCodePhrase) NSString* finalSipCodePhrase;
@property (nullable, nonatomic, setter=setDirectRoutingLogRowId:, getter=directRoutingLogRowId) NSString* directRoutingLogRowId;
@property (nullable, nonatomic, setter=setInviteDateTime:, getter=inviteDateTime) NSDate* inviteDateTime;
@property (nonatomic, setter=setMediaBypassEnabled:, getter=mediaBypassEnabled) BOOL mediaBypassEnabled;
@property (nullable, nonatomic, setter=setMediaPathLocation:, getter=mediaPathLocation) NSString* mediaPathLocation;
@property (nullable, nonatomic, setter=setSignalingLocation:, getter=signalingLocation) NSString* signalingLocation;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nonatomic, setter=setSuccessfulCall:, getter=successfulCall) BOOL successfulCall;
@property (nullable, nonatomic, setter=setTrunkFullyQualifiedDomainName:, getter=trunkFullyQualifiedDomainName) NSString* trunkFullyQualifiedDomainName;
@property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
@property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
