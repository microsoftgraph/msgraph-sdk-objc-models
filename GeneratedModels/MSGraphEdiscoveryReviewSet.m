// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryReviewSet()
{
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    NSString* _displayName;
    NSArray* _queries;
}
@end

@implementation MSGraphEdiscoveryReviewSet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.reviewSet";
    }
    return self;
}
- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) queries
{
    if(!_queries){
        
    NSMutableArray *queriesResult = [NSMutableArray array];
    NSArray *queries = self.dictionary[@"queries"];

    if ([queries isKindOfClass:[NSArray class]]){
        for (id tempReviewSetQuery in queries){
            [queriesResult addObject:tempReviewSetQuery];
        }
    }

    _queries = queriesResult;
        
    }
    return _queries;
}

- (void) setQueries: (NSArray*) val
{
    _queries = val;
    self.dictionary[@"queries"] = val;
}


@end
