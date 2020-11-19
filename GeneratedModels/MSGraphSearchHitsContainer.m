// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchHitsContainer()
{
    NSArray* _hits;
    BOOL _moreResultsAvailable;
    int32_t _total;
}
@end

@implementation MSGraphSearchHitsContainer

- (NSArray*) hits
{
    if(!_hits){
        
    NSMutableArray *hitsResult = [NSMutableArray array];
    NSArray *hits = self.dictionary[@"hits"];

    if ([hits isKindOfClass:[NSArray class]]){
        for (id tempSearchHit in hits){
            [hitsResult addObject:tempSearchHit];
        }
    }

    _hits = hitsResult;
        
    }
    return _hits;
}

- (void) setHits: (NSArray*) val
{
    _hits = val;
    self.dictionary[@"hits"] = val;
}

- (BOOL) moreResultsAvailable
{
    _moreResultsAvailable = [self.dictionary[@"moreResultsAvailable"] boolValue];
    return _moreResultsAvailable;
}

- (void) setMoreResultsAvailable: (BOOL) val
{
    _moreResultsAvailable = val;
    self.dictionary[@"moreResultsAvailable"] = @(val);
}

- (int32_t) total
{
    _total = [self.dictionary[@"total"] intValue];
    return _total;
}

- (void) setTotal: (int32_t) val
{
    _total = val;
    self.dictionary[@"total"] = @(val);
}

@end
