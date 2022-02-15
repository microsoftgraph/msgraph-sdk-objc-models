// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphBucketAggregationDefinition; 


#import "MSObject.h"

@interface MSGraphAggregationOption : MSObject

@property (nonnull, nonatomic, setter=setBucketDefinition:, getter=bucketDefinition) MSGraphBucketAggregationDefinition* bucketDefinition;
@property (nonnull, nonatomic, setter=setField:, getter=field) NSString* field;
@property (nonatomic, setter=setSize:, getter=size) int32_t size;

@end
