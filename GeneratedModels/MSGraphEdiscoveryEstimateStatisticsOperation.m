// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryEstimateStatisticsOperation()
{
    int64_t _indexedItemCount;
    int64_t _indexedItemsSize;
    int32_t _mailboxCount;
    int32_t _siteCount;
    int64_t _unindexedItemCount;
    int64_t _unindexedItemsSize;
    MSGraphEdiscoverySourceCollection* _sourceCollection;
}
@end

@implementation MSGraphEdiscoveryEstimateStatisticsOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.estimateStatisticsOperation";
    }
    return self;
}
- (int64_t) indexedItemCount
{
    _indexedItemCount = [self.dictionary[@"indexedItemCount"] longLongValue];
    return _indexedItemCount;
}

- (void) setIndexedItemCount: (int64_t) val
{
    _indexedItemCount = val;
    self.dictionary[@"indexedItemCount"] = @(val);
}

- (int64_t) indexedItemsSize
{
    _indexedItemsSize = [self.dictionary[@"indexedItemsSize"] longLongValue];
    return _indexedItemsSize;
}

- (void) setIndexedItemsSize: (int64_t) val
{
    _indexedItemsSize = val;
    self.dictionary[@"indexedItemsSize"] = @(val);
}

- (int32_t) mailboxCount
{
    _mailboxCount = [self.dictionary[@"mailboxCount"] intValue];
    return _mailboxCount;
}

- (void) setMailboxCount: (int32_t) val
{
    _mailboxCount = val;
    self.dictionary[@"mailboxCount"] = @(val);
}

- (int32_t) siteCount
{
    _siteCount = [self.dictionary[@"siteCount"] intValue];
    return _siteCount;
}

- (void) setSiteCount: (int32_t) val
{
    _siteCount = val;
    self.dictionary[@"siteCount"] = @(val);
}

- (int64_t) unindexedItemCount
{
    _unindexedItemCount = [self.dictionary[@"unindexedItemCount"] longLongValue];
    return _unindexedItemCount;
}

- (void) setUnindexedItemCount: (int64_t) val
{
    _unindexedItemCount = val;
    self.dictionary[@"unindexedItemCount"] = @(val);
}

- (int64_t) unindexedItemsSize
{
    _unindexedItemsSize = [self.dictionary[@"unindexedItemsSize"] longLongValue];
    return _unindexedItemsSize;
}

- (void) setUnindexedItemsSize: (int64_t) val
{
    _unindexedItemsSize = val;
    self.dictionary[@"unindexedItemsSize"] = @(val);
}

- (MSGraphEdiscoverySourceCollection*) sourceCollection
{
    if(!_sourceCollection){
        _sourceCollection = [[MSGraphEdiscoverySourceCollection alloc] initWithDictionary: self.dictionary[@"sourceCollection"]];
    }
    return _sourceCollection;
}

- (void) setSourceCollection: (MSGraphEdiscoverySourceCollection*) val
{
    _sourceCollection = val;
    self.dictionary[@"sourceCollection"] = val;
}


@end
