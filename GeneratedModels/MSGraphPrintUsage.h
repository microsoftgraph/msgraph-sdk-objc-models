// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSDate; 


#import "MSGraphEntity.h"

@interface MSGraphPrintUsage : MSGraphEntity

  @property (nonatomic, setter=setCompletedBlackAndWhiteJobCount:, getter=completedBlackAndWhiteJobCount) int64_t completedBlackAndWhiteJobCount;
    @property (nonatomic, setter=setCompletedColorJobCount:, getter=completedColorJobCount) int64_t completedColorJobCount;
    @property (nonatomic, setter=setIncompleteJobCount:, getter=incompleteJobCount) int64_t incompleteJobCount;
    @property (nonnull, nonatomic, setter=setUsageDate:, getter=usageDate) MSDate* usageDate;
  
@end
