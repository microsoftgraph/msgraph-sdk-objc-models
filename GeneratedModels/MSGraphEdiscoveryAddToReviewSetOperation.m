// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryAddToReviewSetOperation()
{
    MSGraphEdiscoveryReviewSet* _reviewSet;
    MSGraphEdiscoverySourceCollection* _sourceCollection;
}
@end

@implementation MSGraphEdiscoveryAddToReviewSetOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.addToReviewSetOperation";
    }
    return self;
}
- (MSGraphEdiscoveryReviewSet*) reviewSet
{
    if(!_reviewSet){
        _reviewSet = [[MSGraphEdiscoveryReviewSet alloc] initWithDictionary: self.dictionary[@"reviewSet"]];
    }
    return _reviewSet;
}

- (void) setReviewSet: (MSGraphEdiscoveryReviewSet*) val
{
    _reviewSet = val;
    self.dictionary[@"reviewSet"] = val;
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
