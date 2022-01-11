// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSubjectRightsRequestDetail()
{
    int64_t _excludedItemCount;
    NSArray* _insightCounts;
    int64_t _itemCount;
    int64_t _itemNeedReview;
    NSArray* _productItemCounts;
    int64_t _signedOffItemCount;
    int64_t _totalItemSize;
}
@end

@implementation MSGraphSubjectRightsRequestDetail

- (int64_t) excludedItemCount
{
    _excludedItemCount = [self.dictionary[@"excludedItemCount"] longLongValue];
    return _excludedItemCount;
}

- (void) setExcludedItemCount: (int64_t) val
{
    _excludedItemCount = val;
    self.dictionary[@"excludedItemCount"] = @(val);
}

- (NSArray*) insightCounts
{
    if(!_insightCounts){
        
    NSMutableArray *insightCountsResult = [NSMutableArray array];
    NSArray *insightCounts = self.dictionary[@"insightCounts"];

    if ([insightCounts isKindOfClass:[NSArray class]]){
        for (id tempKeyValuePair in insightCounts){
            [insightCountsResult addObject:tempKeyValuePair];
        }
    }

    _insightCounts = insightCountsResult;
        
    }
    return _insightCounts;
}

- (void) setInsightCounts: (NSArray*) val
{
    _insightCounts = val;
    self.dictionary[@"insightCounts"] = val;
}

- (int64_t) itemCount
{
    _itemCount = [self.dictionary[@"itemCount"] longLongValue];
    return _itemCount;
}

- (void) setItemCount: (int64_t) val
{
    _itemCount = val;
    self.dictionary[@"itemCount"] = @(val);
}

- (int64_t) itemNeedReview
{
    _itemNeedReview = [self.dictionary[@"itemNeedReview"] longLongValue];
    return _itemNeedReview;
}

- (void) setItemNeedReview: (int64_t) val
{
    _itemNeedReview = val;
    self.dictionary[@"itemNeedReview"] = @(val);
}

- (NSArray*) productItemCounts
{
    if(!_productItemCounts){
        
    NSMutableArray *productItemCountsResult = [NSMutableArray array];
    NSArray *productItemCounts = self.dictionary[@"productItemCounts"];

    if ([productItemCounts isKindOfClass:[NSArray class]]){
        for (id tempKeyValuePair in productItemCounts){
            [productItemCountsResult addObject:tempKeyValuePair];
        }
    }

    _productItemCounts = productItemCountsResult;
        
    }
    return _productItemCounts;
}

- (void) setProductItemCounts: (NSArray*) val
{
    _productItemCounts = val;
    self.dictionary[@"productItemCounts"] = val;
}

- (int64_t) signedOffItemCount
{
    _signedOffItemCount = [self.dictionary[@"signedOffItemCount"] longLongValue];
    return _signedOffItemCount;
}

- (void) setSignedOffItemCount: (int64_t) val
{
    _signedOffItemCount = val;
    self.dictionary[@"signedOffItemCount"] = @(val);
}

- (int64_t) totalItemSize
{
    _totalItemSize = [self.dictionary[@"totalItemSize"] longLongValue];
    return _totalItemSize;
}

- (void) setTotalItemSize: (int64_t) val
{
    _totalItemSize = val;
    self.dictionary[@"totalItemSize"] = @(val);
}

@end
