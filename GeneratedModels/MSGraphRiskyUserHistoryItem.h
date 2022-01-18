// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRiskUserActivity; 


#import "MSGraphRiskyUser.h"

@interface MSGraphRiskyUserHistoryItem : MSGraphRiskyUser

  @property (nullable, nonatomic, setter=setActivity:, getter=activity) MSGraphRiskUserActivity* activity;
    @property (nullable, nonatomic, setter=setInitiatedBy:, getter=initiatedBy) NSString* initiatedBy;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
  
@end
