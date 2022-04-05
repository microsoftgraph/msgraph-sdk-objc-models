// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRiskyUserHistoryItem; 
#import "MSGraphRiskDetail.h"
#import "MSGraphRiskLevel.h"
#import "MSGraphRiskState.h"


#import "MSGraphEntity.h"

@interface MSGraphRiskyUser : MSGraphEntity

  @property (nonatomic, setter=setIsDeleted:, getter=isDeleted) BOOL isDeleted;
    @property (nonatomic, setter=setIsProcessing:, getter=isProcessing) BOOL isProcessing;
    @property (nullable, nonatomic, setter=setRiskDetail:, getter=riskDetail) MSGraphRiskDetail* riskDetail;
    @property (nullable, nonatomic, setter=setRiskLastUpdatedDateTime:, getter=riskLastUpdatedDateTime) NSDate* riskLastUpdatedDateTime;
    @property (nullable, nonatomic, setter=setRiskLevel:, getter=riskLevel) MSGraphRiskLevel* riskLevel;
    @property (nullable, nonatomic, setter=setRiskState:, getter=riskState) MSGraphRiskState* riskState;
    @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nullable, nonatomic, setter=setHistory:, getter=history) NSArray* history;
  
@end
