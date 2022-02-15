// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBucketAggregationRange()
{
    NSString* _from;
    NSString* _to;
}
@end

@implementation MSGraphBucketAggregationRange

- (NSString*) from
{
    return self.dictionary[@"from"];
}

- (void) setFrom: (NSString*) val
{
    self.dictionary[@"from"] = val;
}

- (NSString*) to
{
    return self.dictionary[@"to"];
}

- (void) setTo: (NSString*) val
{
    self.dictionary[@"to"] = val;
}

@end
