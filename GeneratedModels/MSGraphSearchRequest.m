// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchRequest()
{
    NSArray* _aggregationFilters;
    NSArray* _aggregations;
    NSArray* _contentSources;
    BOOL _enableTopResults;
    NSArray* _entityTypes;
    NSArray* _fields;
    int32_t _from;
    MSGraphSearchQuery* _query;
    MSGraphResultTemplateOption* _resultTemplateOptions;
    int32_t _size;
    NSArray* _sortProperties;
}
@end

@implementation MSGraphSearchRequest

- (NSArray*) aggregationFilters
{
    if([[NSNull null] isEqual:self.dictionary[@"aggregationFilters"]])
    {
        return nil;
    }   
    return self.dictionary[@"aggregationFilters"];
}

- (void) setAggregationFilters: (NSArray*) val
{
    self.dictionary[@"aggregationFilters"] = val;
}

- (NSArray*) aggregations
{
    if(!_aggregations){
        
    NSMutableArray *aggregationsResult = [NSMutableArray array];
    NSArray *aggregations = self.dictionary[@"aggregations"];

    if ([aggregations isKindOfClass:[NSArray class]]){
        for (id tempAggregationOption in aggregations){
            [aggregationsResult addObject:tempAggregationOption];
        }
    }

    _aggregations = aggregationsResult;
        
    }
    return _aggregations;
}

- (void) setAggregations: (NSArray*) val
{
    _aggregations = val;
    self.dictionary[@"aggregations"] = val;
}

- (NSArray*) contentSources
{
    if([[NSNull null] isEqual:self.dictionary[@"contentSources"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentSources"];
}

- (void) setContentSources: (NSArray*) val
{
    self.dictionary[@"contentSources"] = val;
}

- (BOOL) enableTopResults
{
    _enableTopResults = [self.dictionary[@"enableTopResults"] boolValue];
    return _enableTopResults;
}

- (void) setEnableTopResults: (BOOL) val
{
    _enableTopResults = val;
    self.dictionary[@"enableTopResults"] = @(val);
}

- (NSArray*) entityTypes
{
    if(!_entityTypes){
        
    NSMutableArray *entityTypesResult = [NSMutableArray array];
    NSArray *entityTypes = self.dictionary[@"entityTypes"];

    if ([entityTypes isKindOfClass:[NSArray class]]){
        for (id tempEntityType in entityTypes){
            [entityTypesResult addObject:tempEntityType];
        }
    }

    _entityTypes = entityTypesResult;
        
    }
    return _entityTypes;
}

- (void) setEntityTypes: (NSArray*) val
{
    _entityTypes = val;
    self.dictionary[@"entityTypes"] = val;
}

- (NSArray*) fields
{
    if([[NSNull null] isEqual:self.dictionary[@"fields"]])
    {
        return nil;
    }   
    return self.dictionary[@"fields"];
}

- (void) setFields: (NSArray*) val
{
    self.dictionary[@"fields"] = val;
}

- (int32_t) from
{
    _from = [self.dictionary[@"from"] intValue];
    return _from;
}

- (void) setFrom: (int32_t) val
{
    _from = val;
    self.dictionary[@"from"] = @(val);
}

- (MSGraphSearchQuery*) query
{
    if(!_query){
        _query = [[MSGraphSearchQuery alloc] initWithDictionary: self.dictionary[@"query"]];
    }
    return _query;
}

- (void) setQuery: (MSGraphSearchQuery*) val
{
    _query = val;
    self.dictionary[@"query"] = val;
}

- (MSGraphResultTemplateOption*) resultTemplateOptions
{
    if(!_resultTemplateOptions){
        _resultTemplateOptions = [[MSGraphResultTemplateOption alloc] initWithDictionary: self.dictionary[@"resultTemplateOptions"]];
    }
    return _resultTemplateOptions;
}

- (void) setResultTemplateOptions: (MSGraphResultTemplateOption*) val
{
    _resultTemplateOptions = val;
    self.dictionary[@"resultTemplateOptions"] = val;
}

- (int32_t) size
{
    _size = [self.dictionary[@"size"] intValue];
    return _size;
}

- (void) setSize: (int32_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (NSArray*) sortProperties
{
    if(!_sortProperties){
        
    NSMutableArray *sortPropertiesResult = [NSMutableArray array];
    NSArray *sortProperties = self.dictionary[@"sortProperties"];

    if ([sortProperties isKindOfClass:[NSArray class]]){
        for (id tempSortProperty in sortProperties){
            [sortPropertiesResult addObject:tempSortProperty];
        }
    }

    _sortProperties = sortPropertiesResult;
        
    }
    return _sortProperties;
}

- (void) setSortProperties: (NSArray*) val
{
    _sortProperties = val;
    self.dictionary[@"sortProperties"] = val;
}

@end
