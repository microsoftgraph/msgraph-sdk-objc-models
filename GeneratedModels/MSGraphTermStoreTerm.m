// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermStoreTerm()
{
    NSDate* _createdDateTime;
    NSArray* _descriptions;
    NSArray* _labels;
    NSDate* _lastModifiedDateTime;
    NSArray* _properties;
    NSArray* _children;
    NSArray* _relations;
    MSGraphTermStoreSet* _set;
}
@end

@implementation MSGraphTermStoreTerm

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termStore.term";
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

- (NSArray*) descriptions
{
    if(!_descriptions){
        
    NSMutableArray *descriptionsResult = [NSMutableArray array];
    NSArray *descriptions = self.dictionary[@"descriptions"];

    if ([descriptions isKindOfClass:[NSArray class]]){
        for (id tempLocalizedDescription in descriptions){
            [descriptionsResult addObject:tempLocalizedDescription];
        }
    }

    _descriptions = descriptionsResult;
        
    }
    return _descriptions;
}

- (void) setDescriptions: (NSArray*) val
{
    _descriptions = val;
    self.dictionary[@"descriptions"] = val;
}

- (NSArray*) labels
{
    if(!_labels){
        
    NSMutableArray *labelsResult = [NSMutableArray array];
    NSArray *labels = self.dictionary[@"labels"];

    if ([labels isKindOfClass:[NSArray class]]){
        for (id tempLocalizedLabel in labels){
            [labelsResult addObject:tempLocalizedLabel];
        }
    }

    _labels = labelsResult;
        
    }
    return _labels;
}

- (void) setLabels: (NSArray*) val
{
    _labels = val;
    self.dictionary[@"labels"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
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


@end
