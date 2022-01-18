// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchBucket()
{
    NSString* _aggregationFilterToken;
    int32_t _count;
    NSString* _key;
}
@end

@implementation MSGraphSearchBucket

- (NSString*) aggregationFilterToken
{
    if([[NSNull null] isEqual:self.dictionary[@"aggregationFilterToken"]])
    {
        return nil;
    }   
    return self.dictionary[@"aggregationFilterToken"];
}

- (void) setAggregationFilterToken: (NSString*) val
{
    self.dictionary[@"aggregationFilterToken"] = val;
}

- (int32_t) count
{
    _count = [self.dictionary[@"count"] intValue];
    return _count;
}

- (void) setCount: (int32_t) val
{
    _count = val;
    self.dictionary[@"count"] = @(val);
}

- (NSString*) key
{
    if([[NSNull null] isEqual:self.dictionary[@"key"]])
    {
        return nil;
    }   
    return self.dictionary[@"key"];
}

- (void) setKey: (NSString*) val
{
    self.dictionary[@"key"] = val;
}

@end
