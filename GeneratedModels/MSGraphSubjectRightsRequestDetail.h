// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphKeyValuePair; 


#import "MSObject.h"

@interface MSGraphSubjectRightsRequestDetail : MSObject

@property (nonatomic, setter=setExcludedItemCount:, getter=excludedItemCount) int64_t excludedItemCount;
@property (nullable, nonatomic, setter=setInsightCounts:, getter=insightCounts) NSArray* insightCounts;
@property (nonatomic, setter=setItemCount:, getter=itemCount) int64_t itemCount;
@property (nonatomic, setter=setItemNeedReview:, getter=itemNeedReview) int64_t itemNeedReview;
@property (nullable, nonatomic, setter=setProductItemCounts:, getter=productItemCounts) NSArray* productItemCounts;
@property (nonatomic, setter=setSignedOffItemCount:, getter=signedOffItemCount) int64_t signedOffItemCount;
@property (nonatomic, setter=setTotalItemSize:, getter=totalItemSize) int64_t totalItemSize;

@end
