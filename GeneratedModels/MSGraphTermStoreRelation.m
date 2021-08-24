// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreRelation()
{
    MSGraphTermStoreRelationType* _relationship;
    MSGraphTermStoreTerm* _fromTerm;
    MSGraphTermStoreSet* _set;
    MSGraphTermStoreTerm* _toTerm;
}
@end

@implementation MSGraphTermStoreRelation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termStore.relation";
    }
    return self;
}
- (MSGraphTermStoreRelationType*) relationship
{
    if(!_relationship){
        _relationship = [self.dictionary[@"relationship"] toMSGraphTermStoreRelationType];
    }
    return _relationship;
}

- (void) setRelationship: (MSGraphTermStoreRelationType*) val
{
    _relationship = val;
    self.dictionary[@"relationship"] = val;
}

- (MSGraphTermStoreTerm*) fromTerm
{
    if(!_fromTerm){
        _fromTerm = [[MSGraphTermStoreTerm alloc] initWithDictionary: self.dictionary[@"fromTerm"]];
    }
    return _fromTerm;
}

- (void) setFromTerm: (MSGraphTermStoreTerm*) val
{
    _fromTerm = val;
    self.dictionary[@"fromTerm"] = val;
}

- (MSGraphTermStoreSet*) set
{
    if(!_set){
        _set = [[MSGraphTermStoreSet alloc] initWithDictionary: self.dictionary[@"set"]];
    }
    return _set;
}

- (void) setSet: (MSGraphTermStoreSet*) val
{
    _set = val;
    self.dictionary[@"set"] = val;
}

- (MSGraphTermStoreTerm*) toTerm
{
    if(!_toTerm){
        _toTerm = [[MSGraphTermStoreTerm alloc] initWithDictionary: self.dictionary[@"toTerm"]];
    }
    return _toTerm;
}

- (void) setToTerm: (MSGraphTermStoreTerm*) val
{
    _toTerm = val;
    self.dictionary[@"toTerm"] = val;
}


@end
