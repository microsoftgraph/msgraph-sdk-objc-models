// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchAggregation()
{
    NSArray* _buckets;
    NSString* _field;
}
@end

@implementation MSGraphSearchAggregation

- (NSArray*) buckets
{
    if(!_buckets){
        
    NSMutableArray *bucketsResult = [NSMutableArray array];
    NSArray *buckets = self.dictionary[@"buckets"];

    if ([buckets isKindOfClass:[NSArray class]]){
        for (id tempSearchBucket in buckets){
            [bucketsResult addObject:tempSearchBucket];
        }
    }

    _buckets = bucketsResult;
        
    }
    return _buckets;
}

- (void) setBuckets: (NSArray*) val
{
    _buckets = val;
    self.dictionary[@"buckets"] = val;
}

- (NSString*) field
{
    if([[NSNull null] isEqual:self.dictionary[@"field"]])
    {
        return nil;
    }   
    return self.dictionary[@"field"];
}

- (void) setField: (NSString*) val
{
    self.dictionary[@"field"] = val;
}

@end
