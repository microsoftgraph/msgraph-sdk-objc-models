// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchResultSet()
{
    NSArray* _hitsContainers;
    MSGraphResultTemplateDictionary* _resultTemplates;
    NSArray* _searchTerms;
}
@end

@implementation MSGraphSearchResultSet

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

- (MSGraphResultTemplateDictionary*) resultTemplates
{
    if(!_resultTemplates){
        _resultTemplates = [[MSGraphResultTemplateDictionary alloc] initWithDictionary: self.dictionary[@"resultTemplates"]];
    }
    return _resultTemplates;
}

- (void) setResultTemplates: (MSGraphResultTemplateDictionary*) val
{
    _resultTemplates = val;
    self.dictionary[@"resultTemplates"] = val;
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
