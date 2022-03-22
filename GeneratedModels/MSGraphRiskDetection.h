// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSignInLocation; 
#import "MSGraphActivityType.h"
#import "MSGraphRiskDetectionTimingType.h"
#import "MSGraphRiskDetail.h"
#import "MSGraphRiskLevel.h"
#import "MSGraphRiskState.h"
#import "MSGraphTokenIssuerType.h"


#import "MSGraphEntity.h"

@interface MSGraphRiskDetection : MSGraphEntity

  @property (nullable, nonatomic, setter=setActivity:, getter=activity) MSGraphActivityType* activity;
    @property (nullable, nonatomic, setter=setActivityDateTime:, getter=activityDateTime) NSDate* activityDateTime;
    @property (nullable, nonatomic, setter=setAdditionalInfo:, getter=additionalInfo) NSString* additionalInfo;
    @property (nullable, nonatomic, setter=setCorrelationId:, getter=correlationId) NSString* correlationId;
    @property (nullable, nonatomic, setter=setDetectedDateTime:, getter=detectedDateTime) NSDate* detectedDateTime;
    @property (nullable, nonatomic, setter=setDetectionTimingType:, getter=detectionTimingType) MSGraphRiskDetectionTimingType* detectionTimingType;
    @property (nullable, nonatomic, setter=setIpAddress:, getter=ipAddress) NSString* ipAddress;
    @property (nullable, nonatomic, setter=setLastUpdatedDateTime:, getter=lastUpdatedDateTime) NSDate* lastUpdatedDateTime;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphSignInLocation* location;
    @property (nullable, nonatomic, setter=setRequestId:, getter=requestId) NSString* requestId;
    @property (nullable, nonatomic, setter=setRiskDetail:, getter=riskDetail) MSGraphRiskDetail* riskDetail;
    @property (nullable, nonatomic, setter=setRiskEventType:, getter=riskEventType) NSString* riskEventType;
    @property (nullable, nonatomic, setter=setRiskLevel:, getter=riskLevel) MSGraphRiskLevel* riskLevel;
    @property (nullable, nonatomic, setter=setRiskState:, getter=riskState) MSGraphRiskState* riskState;
    @property (nullable, nonatomic, setter=setSource:, getter=source) NSString* source;
    @property (nullable, nonatomic, setter=setTokenIssuerType:, getter=tokenIssuerType) MSGraphTokenIssuerType* tokenIssuerType;
    @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
