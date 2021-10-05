// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreGroup()
{
    NSDate* _createdDateTime;
    NSString* _groupDescription;
    NSString* _displayName;
    NSString* _parentSiteId;
    MSGraphTermStoreTermGroupScope* _scope;
    NSArray* _sets;
}
@end

@implementation MSGraphTermStoreGroup

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termStore.group";
    }
    return self;
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

- (NSString*) groupDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setGroupDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (NSString*) parentSiteId
{
    if([[NSNull null] isEqual:self.dictionary[@"parentSiteId"]])
    {
        return nil;
    }   
    return self.dictionary[@"parentSiteId"];
}

- (void) setParentSiteId: (NSString*) val
{
    self.dictionary[@"parentSiteId"] = val;
}

- (MSGraphTermStoreTermGroupScope*) scope
{
    if(!_scope){
        _scope = [self.dictionary[@"scope"] toMSGraphTermStoreTermGroupScope];
    }
    return _scope;
}

- (void) setScope: (MSGraphTermStoreTermGroupScope*) val
{
    _scope = val;
    self.dictionary[@"scope"] = val;
}

- (NSArray*) sets
{
    if(!_sets){
        
    NSMutableArray *setsResult = [NSMutableArray array];
    NSArray *sets = self.dictionary[@"sets"];

    if ([sets isKindOfClass:[NSArray class]]){
        for (id tempSet in sets){
            [setsResult addObject:tempSet];
        }
    }

    _sets = setsResult;
        
    }
    return _sets;
}

- (void) setSets: (NSArray*) val
{
    _sets = val;
    self.dictionary[@"sets"] = val;
}


@end
