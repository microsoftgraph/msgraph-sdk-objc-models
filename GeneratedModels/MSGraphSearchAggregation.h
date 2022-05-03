// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSearchBucket; 


#import "MSObject.h"

@interface MSGraphSearchAggregation : MSObject

@property (nullable, nonatomic, setter=setBuckets:, getter=buckets) NSArray* buckets;
@property (nullable, nonatomic, setter=setField:, getter=field) NSString* field;

@end
