// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBucketAggregationDefinition()
{
    BOOL _isDescending;
    int32_t _minimumCount;
    NSString* _prefixFilter;
    NSArray* _ranges;
    MSGraphBucketAggregationSortProperty* _sortBy;
}
@end

@implementation MSGraphBucketAggregationDefinition

- (BOOL) isDescending
{
    _isDescending = [self.dictionary[@"isDescending"] boolValue];
    return _isDescending;
}

- (void) setIsDescending: (BOOL) val
{
    _isDescending = val;
    self.dictionary[@"isDescending"] = @(val);
}

- (int32_t) minimumCount
{
    _minimumCount = [self.dictionary[@"minimumCount"] intValue];
    return _minimumCount;
}

- (void) setMinimumCount: (int32_t) val
{
    _minimumCount = val;
    self.dictionary[@"minimumCount"] = @(val);
}

- (NSString*) prefixFilter
{
    if([[NSNull null] isEqual:self.dictionary[@"prefixFilter"]])
    {
        return nil;
    }   
    return self.dictionary[@"prefixFilter"];
}

- (void) setPrefixFilter: (NSString*) val
{
    self.dictionary[@"prefixFilter"] = val;
}

- (NSArray*) ranges
{
    if(!_ranges){
        
    NSMutableArray *rangesResult = [NSMutableArray array];
    NSArray *ranges = self.dictionary[@"ranges"];

    if ([ranges isKindOfClass:[NSArray class]]){
        for (id tempBucketAggregationRange in ranges){
            [rangesResult addObject:tempBucketAggregationRange];
        }
    }

    _ranges = rangesResult;
        
    }
    return _ranges;
}

- (void) setRanges: (NSArray*) val
{
    _ranges = val;
    self.dictionary[@"ranges"] = val;
}

- (MSGraphBucketAggregationSortProperty*) sortBy
{
    if(!_sortBy){
        _sortBy = [self.dictionary[@"sortBy"] toMSGraphBucketAggregationSortProperty];
    }
    return _sortBy;
}

- (void) setSortBy: (MSGraphBucketAggregationSortProperty*) val
{
    _sortBy = val;
    self.dictionary[@"sortBy"] = val;
}

@end
