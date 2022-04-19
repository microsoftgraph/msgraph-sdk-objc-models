// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class Decimal; 
#import "MSGraphCallRecordsPstnCallDurationSource.h"


#import "MSObject.h"

@interface MSGraphCallRecordsPstnCallLogRow : MSObject

@property (nullable, nonatomic, setter=setCallDurationSource:, getter=callDurationSource) MSGraphCallRecordsPstnCallDurationSource* callDurationSource;
@property (nullable, nonatomic, setter=setCalleeNumber:, getter=calleeNumber) NSString* calleeNumber;
@property (nullable, nonatomic, setter=setCallerNumber:, getter=callerNumber) NSString* callerNumber;
@property (nullable, nonatomic, setter=setCallId:, getter=callId) NSString* callId;
@property (nullable, nonatomic, setter=setCallType:, getter=callType) NSString* callType;
@property (nullable, nonatomic, setter=setCharge:, getter=charge) Decimal* charge;
@property (nullable, nonatomic, setter=setConferenceId:, getter=conferenceId) NSString* conferenceId;
@property (nullable, nonatomic, setter=setConnectionCharge:, getter=connectionCharge) Decimal* connectionCharge;
@property (nullable, nonatomic, setter=setCurrency:, getter=currency) NSString* currency;
@property (nullable, nonatomic, setter=setDestinationContext:, getter=destinationContext) NSString* destinationContext;
@property (nullable, nonatomic, setter=setDestinationName:, getter=destinationName) NSString* destinationName;
@property (nonatomic, setter=setDuration:, getter=duration) int32_t duration;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setPstnCallLogRowId:, getter=pstnCallLogRowId) NSString* pstnCallLogRowId;
@property (nullable, nonatomic, setter=setInventoryType:, getter=inventoryType) NSString* inventoryType;
@property (nullable, nonatomic, setter=setLicenseCapability:, getter=licenseCapability) NSString* licenseCapability;
@property (nullable, nonatomic, setter=setOperator:, getter=operator) NSString* operator;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nullable, nonatomic, setter=setTenantCountryCode:, getter=tenantCountryCode) NSString* tenantCountryCode;
@property (nullable, nonatomic, setter=setUsageCountryCode:, getter=usageCountryCode) NSString* usageCountryCode;
@property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
@property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
