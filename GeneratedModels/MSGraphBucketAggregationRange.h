// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphBucketAggregationRange : MSObject

@property (nonnull, nonatomic, setter=setFrom:, getter=from) NSString* from;
@property (nonnull, nonatomic, setter=setTo:, getter=to) NSString* to;

@end
