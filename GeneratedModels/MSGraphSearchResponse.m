// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchResponse()
{
    NSArray* _hitsContainers;
    NSArray* _searchTerms;
}
@end

@implementation MSGraphSearchResponse

- (NSArray*) hitsContainers
{
    if(!_hitsContainers){
        
    NSMutableArray *hitsContainersResult = [NSMutableArray array];
    NSArray *hitsContainers = self.dictionary[@"hitsContainers"];

    if ([hitsContainers isKindOfClass:[NSArray class]]){
        for (id tempSearchHitsContainer in hitsContainers){
            [hitsContainersResult addObject:tempSearchHitsContainer];
        }
    }

    _hitsContainers = hitsContainersResult;
        
    }
    return _hitsContainers;
}

- (void) setHitsContainers: (NSArray*) val
{
    _hitsContainers = val;
    self.dictionary[@"hitsContainers"] = val;
}

- (NSArray*) searchTerms
{
    if([[NSNull null] isEqual:self.dictionary[@"searchTerms"]])
    {
        return nil;
    }   
    return self.dictionary[@"searchTerms"];
}

- (void) setSearchTerms: (NSArray*) val
{
    self.dictionary[@"searchTerms"] = val;
}

@end
