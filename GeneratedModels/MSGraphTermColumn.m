// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermColumn()
{
    BOOL _allowMultipleValues;
    BOOL _showFullyQualifiedName;
    MSGraphTermStoreTerm* _parentTerm;
    MSGraphTermStoreSet* _termSet;
}
@end

@implementation MSGraphTermColumn

- (BOOL) allowMultipleValues
{
    _allowMultipleValues = [self.dictionary[@"allowMultipleValues"] boolValue];
    return _allowMultipleValues;
}

- (void) setAllowMultipleValues: (BOOL) val
{
    _allowMultipleValues = val;
    self.dictionary[@"allowMultipleValues"] = @(val);
}

- (BOOL) showFullyQualifiedName
{
    _showFullyQualifiedName = [self.dictionary[@"showFullyQualifiedName"] boolValue];
    return _showFullyQualifiedName;
}

- (void) setShowFullyQualifiedName: (BOOL) val
{
    _showFullyQualifiedName = val;
    self.dictionary[@"showFullyQualifiedName"] = @(val);
}

- (MSGraphTermStoreTerm*) parentTerm
{
    if(!_parentTerm){
        _parentTerm = [[MSGraphTermStoreTerm alloc] initWithDictionary: self.dictionary[@"parentTerm"]];
    }
    return _parentTerm;
}

- (void) setParentTerm: (MSGraphTermStoreTerm*) val
{
    _parentTerm = val;
    self.dictionary[@"parentTerm"] = val;
}

- (MSGraphTermStoreSet*) termSet
{
    if(!_termSet){
        _termSet = [[MSGraphTermStoreSet alloc] initWithDictionary: self.dictionary[@"termSet"]];
    }
    return _termSet;
}

- (void) setTermSet: (MSGraphTermStoreSet*) val
{
    _termSet = val;
    self.dictionary[@"termSet"] = val;
}

@end
