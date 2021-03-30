// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApprovalStage; 


#import "MSGraphEntity.h"

@interface MSGraphApproval : MSGraphEntity

  @property (nullable, nonatomic, setter=setStages:, getter=stages) NSArray* stages;
  
@end
