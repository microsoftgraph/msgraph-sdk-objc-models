// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSearchBucket : MSObject

@property (nullable, nonatomic, setter=setAggregationFilterToken:, getter=aggregationFilterToken) NSString* aggregationFilterToken;
@property (nonatomic, setter=setCount:, getter=count) int32_t count;
@property (nullable, nonatomic, setter=setKey:, getter=key) NSString* key;

@end
