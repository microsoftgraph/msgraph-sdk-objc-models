// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAgreementAcceptanceState.h"


#import "MSGraphEntity.h"

@interface MSGraphAgreementAcceptance : MSGraphEntity

  @property (nullable, nonatomic, setter=setAgreementFileId:, getter=agreementFileId) NSString* agreementFileId;
    @property (nullable, nonatomic, setter=setAgreementId:, getter=agreementId) NSString* agreementId;
    @property (nullable, nonatomic, setter=setDeviceDisplayName:, getter=deviceDisplayName) NSString* deviceDisplayName;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nullable, nonatomic, setter=setDeviceOSType:, getter=deviceOSType) NSString* deviceOSType;
    @property (nullable, nonatomic, setter=setDeviceOSVersion:, getter=deviceOSVersion) NSString* deviceOSVersion;
    @property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setRecordedDateTime:, getter=recordedDateTime) NSDate* recordedDateTime;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphAgreementAcceptanceState* state;
    @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nullable, nonatomic, setter=setUserEmail:, getter=userEmail) NSString* userEmail;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
