// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphBucketAggregationRange; 
#import "MSGraphBucketAggregationSortProperty.h"


#import "MSObject.h"

@interface MSGraphBucketAggregationDefinition : MSObject

@property (nonatomic, setter=setIsDescending:, getter=isDescending) BOOL isDescending;
@property (nonatomic, setter=setMinimumCount:, getter=minimumCount) int32_t minimumCount;
@property (nullable, nonatomic, setter=setPrefixFilter:, getter=prefixFilter) NSString* prefixFilter;
@property (nullable, nonatomic, setter=setRanges:, getter=ranges) NSArray* ranges;
@property (nonnull, nonatomic, setter=setSortBy:, getter=sortBy) MSGraphBucketAggregationSortProperty* sortBy;

@end
