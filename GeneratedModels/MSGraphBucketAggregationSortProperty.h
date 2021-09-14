// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBucketAggregationSortPropertyValue){

	MSGraphBucketAggregationSortPropertyCount = 0,
	MSGraphBucketAggregationSortPropertyKeyAsString = 1,
	MSGraphBucketAggregationSortPropertyKeyAsNumber = 2,
	MSGraphBucketAggregationSortPropertyUnknownFutureValue = 3,
    MSGraphBucketAggregationSortPropertyEndOfEnum
};

@interface MSGraphBucketAggregationSortProperty : NSObject

+(MSGraphBucketAggregationSortProperty*) count;
+(MSGraphBucketAggregationSortProperty*) keyAsString;
+(MSGraphBucketAggregationSortProperty*) keyAsNumber;
+(MSGraphBucketAggregationSortProperty*) unknownFutureValue;

+(MSGraphBucketAggregationSortProperty*) UnknownEnumValue;

+(MSGraphBucketAggregationSortProperty*) bucketAggregationSortPropertyWithEnumValue:(MSGraphBucketAggregationSortPropertyValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBucketAggregationSortPropertyValue enumValue;

@end


@interface NSString (MSGraphBucketAggregationSortProperty)

- (MSGraphBucketAggregationSortProperty*) toMSGraphBucketAggregationSortProperty;

@end
