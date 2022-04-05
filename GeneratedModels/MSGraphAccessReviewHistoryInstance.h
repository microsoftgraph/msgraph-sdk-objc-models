// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAccessReviewHistoryStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewHistoryInstance : MSGraphEntity

  @property (nullable, nonatomic, setter=setDownloadUri:, getter=downloadUri) NSString* downloadUri;
    @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setFulfilledDateTime:, getter=fulfilledDateTime) NSDate* fulfilledDateTime;
    @property (nullable, nonatomic, setter=setReviewHistoryPeriodEndDateTime:, getter=reviewHistoryPeriodEndDateTime) NSDate* reviewHistoryPeriodEndDateTime;
    @property (nullable, nonatomic, setter=setReviewHistoryPeriodStartDateTime:, getter=reviewHistoryPeriodStartDateTime) NSDate* reviewHistoryPeriodStartDateTime;
    @property (nonnull, nonatomic, setter=setRunDateTime:, getter=runDateTime) NSDate* runDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphAccessReviewHistoryStatus* status;
  
@end
