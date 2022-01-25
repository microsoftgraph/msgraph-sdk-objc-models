// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreSet()
{
    NSDate* _createdDateTime;
    NSString* _setDescription;
    NSArray* _localizedNames;
    NSArray* _properties;
    NSArray* _children;
    MSGraphTermStoreGroup* _parentGroup;
    NSArray* _relations;
    NSArray* _terms;
}
@end

@implementation MSGraphTermStoreSet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termStore.set";
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

- (NSString*) setDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setSetDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) localizedNames
{
    if(!_localizedNames){
        
    NSMutableArray *localizedNamesResult = [NSMutableArray array];
    NSArray *localizedNames = self.dictionary[@"localizedNames"];

    if ([localizedNames isKindOfClass:[NSArray class]]){
        for (id tempLocalizedName in localizedNames){
            [localizedNamesResult addObject:tempLocalizedName];
        }
    }

    _localizedNames = localizedNamesResult;
        
    }
    return _localizedNames;
}

- (void) setLocalizedNames: (NSArray*) val
{
    _localizedNames = val;
    self.dictionary[@"localizedNames"] = val;
}

- (NSArray*) properties
{
    if(!_properties){
        
    NSMutableArray *propertiesResult = [NSMutableArray array];
    NSArray *properties = self.dictionary[@"properties"];

    if ([properties isKindOfClass:[NSArray class]]){
        for (id tempKeyValue in properties){
            [propertiesResult addObject:tempKeyValue];
        }
    }

    _properties = propertiesResult;
        
    }
    return _properties;
}

- (void) setProperties: (NSArray*) val
{
    _properties = val;
    self.dictionary[@"properties"] = val;
}

- (NSArray*) children
{
    if(!_children){
        
    NSMutableArray *childrenResult = [NSMutableArray array];
    NSArray *children = self.dictionary[@"children"];

    if ([children isKindOfClass:[NSArray class]]){
        for (id tempTerm in children){
            [childrenResult addObject:tempTerm];
        }
    }

    _children = childrenResult;
        
    }
    return _children;
}

- (void) setChildren: (NSArray*) val
{
    _children = val;
    self.dictionary[@"children"] = val;
}

- (MSGraphTermStoreGroup*) parentGroup
{
    if(!_parentGroup){
        _parentGroup = [[MSGraphTermStoreGroup alloc] initWithDictionary: self.dictionary[@"parentGroup"]];
    }
    return _parentGroup;
}

- (void) setParentGroup: (MSGraphTermStoreGroup*) val
{
    _parentGroup = val;
    self.dictionary[@"parentGroup"] = val;
}

- (NSArray*) relations
{
    if(!_relations){
        
    NSMutableArray *relationsResult = [NSMutableArray array];
    NSArray *relations = self.dictionary[@"relations"];

    if ([relations isKindOfClass:[NSArray class]]){
        for (id tempRelation in relations){
            [relationsResult addObject:tempRelation];
        }
    }

    _relations = relationsResult;
        
    }
    return _relations;
}

- (void) setRelations: (NSArray*) val
{
    _relations = val;
    self.dictionary[@"relations"] = val;
}

- (NSArray*) terms
{
    if(!_terms){
        
    NSMutableArray *termsResult = [NSMutableArray array];
    NSArray *terms = self.dictionary[@"terms"];

    if ([terms isKindOfClass:[NSArray class]]){
        for (id tempTerm in terms){
            [termsResult addObject:tempTerm];
        }
    }

    _terms = termsResult;
        
    }
    return _terms;
}

- (void) setTerms: (NSArray*) val
{
    _terms = val;
    self.dictionary[@"terms"] = val;
}


@end
