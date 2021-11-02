// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoverySourceCollection; 


#import "MSGraphEdiscoveryCaseOperation.h"

@interface MSGraphEdiscoveryEstimateStatisticsOperation : MSGraphEdiscoveryCaseOperation

  @property (nonatomic, setter=setIndexedItemCount:, getter=indexedItemCount) int64_t indexedItemCount;
    @property (nonatomic, setter=setIndexedItemsSize:, getter=indexedItemsSize) int64_t indexedItemsSize;
    @property (nonatomic, setter=setMailboxCount:, getter=mailboxCount) int32_t mailboxCount;
    @property (nonatomic, setter=setSiteCount:, getter=siteCount) int32_t siteCount;
    @property (nonatomic, setter=setUnindexedItemCount:, getter=unindexedItemCount) int64_t unindexedItemCount;
    @property (nonatomic, setter=setUnindexedItemsSize:, getter=unindexedItemsSize) int64_t unindexedItemsSize;
    @property (nullable, nonatomic, setter=setSourceCollection:, getter=sourceCollection) MSGraphEdiscoverySourceCollection* sourceCollection;
  
@end
