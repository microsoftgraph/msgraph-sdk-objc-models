// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphContentType()
{
    NSArray* _associatedHubsUrls;
    NSString* _contentTypeDescription;
    MSGraphDocumentSet* _documentSet;
    MSGraphDocumentSetContent* _documentTemplate;
    NSString* _group;
    BOOL _hidden;
    MSGraphItemReference* _inheritedFrom;
    BOOL _isBuiltIn;
    NSString* _name;
    MSGraphContentTypeOrder* _order;
    NSString* _parentId;
    BOOL _propagateChanges;
    BOOL _contentTypeReadOnly;
    BOOL _sealed;
    MSGraphContentType* _base;
    NSArray* _baseTypes;
    NSArray* _columnLinks;
    NSArray* _columnPositions;
    NSArray* _columns;
}
@end

@implementation MSGraphContentType

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.contentType";
    }
    return self;
}
- (NSArray*) associatedHubsUrls
{
    if([[NSNull null] isEqual:self.dictionary[@"associatedHubsUrls"]])
    {
        return nil;
    }   
    return self.dictionary[@"associatedHubsUrls"];
}

- (void) setAssociatedHubsUrls: (NSArray*) val
{
    self.dictionary[@"associatedHubsUrls"] = val;
}

- (NSString*) contentTypeDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setContentTypeDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphDocumentSet*) documentSet
{
    if(!_documentSet){
        _documentSet = [[MSGraphDocumentSet alloc] initWithDictionary: self.dictionary[@"documentSet"]];
    }
    return _documentSet;
}

- (void) setDocumentSet: (MSGraphDocumentSet*) val
{
    _documentSet = val;
    self.dictionary[@"documentSet"] = val;
}

- (MSGraphDocumentSetContent*) documentTemplate
{
    if(!_documentTemplate){
        _documentTemplate = [[MSGraphDocumentSetContent alloc] initWithDictionary: self.dictionary[@"documentTemplate"]];
    }
    return _documentTemplate;
}

- (void) setDocumentTemplate: (MSGraphDocumentSetContent*) val
{
    _documentTemplate = val;
    self.dictionary[@"documentTemplate"] = val;
}

- (NSString*) group
{
    if([[NSNull null] isEqual:self.dictionary[@"group"]])
    {
        return nil;
    }   
    return self.dictionary[@"group"];
}

- (void) setGroup: (NSString*) val
{
    self.dictionary[@"group"] = val;
}

- (BOOL) hidden
{
    _hidden = [self.dictionary[@"hidden"] boolValue];
    return _hidden;
}

- (void) setHidden: (BOOL) val
{
    _hidden = val;
    self.dictionary[@"hidden"] = @(val);
}

- (MSGraphItemReference*) inheritedFrom
{
    if(!_inheritedFrom){
        _inheritedFrom = [[MSGraphItemReference alloc] initWithDictionary: self.dictionary[@"inheritedFrom"]];
    }
    return _inheritedFrom;
}

- (void) setInheritedFrom: (MSGraphItemReference*) val
{
    _inheritedFrom = val;
    self.dictionary[@"inheritedFrom"] = val;
}

- (BOOL) isBuiltIn
{
    _isBuiltIn = [self.dictionary[@"isBuiltIn"] boolValue];
    return _isBuiltIn;
}

- (void) setIsBuiltIn: (BOOL) val
{
    _isBuiltIn = val;
    self.dictionary[@"isBuiltIn"] = @(val);
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphContentTypeOrder*) order
{
    if(!_order){
        _order = [[MSGraphContentTypeOrder alloc] initWithDictionary: self.dictionary[@"order"]];
    }
    return _order;
}

- (void) setOrder: (MSGraphContentTypeOrder*) val
{
    _order = val;
    self.dictionary[@"order"] = val;
}

- (NSString*) parentId
{
    if([[NSNull null] isEqual:self.dictionary[@"parentId"]])
    {
        return nil;
    }   
    return self.dictionary[@"parentId"];
}

- (void) setParentId: (NSString*) val
{
    self.dictionary[@"parentId"] = val;
}

- (BOOL) propagateChanges
{
    _propagateChanges = [self.dictionary[@"propagateChanges"] boolValue];
    return _propagateChanges;
}

- (void) setPropagateChanges: (BOOL) val
{
    _propagateChanges = val;
    self.dictionary[@"propagateChanges"] = @(val);
}

- (BOOL) contentTypeReadOnly
{
    _contentTypeReadOnly = [self.dictionary[@"readOnly"] boolValue];
    return _contentTypeReadOnly;
}

- (void) setContentTypeReadOnly: (BOOL) val
{
    _contentTypeReadOnly = val;
    self.dictionary[@"readOnly"] = @(val);
}

- (BOOL) sealed
{
    _sealed = [self.dictionary[@"sealed"] boolValue];
    return _sealed;
}

- (void) setSealed: (BOOL) val
{
    _sealed = val;
    self.dictionary[@"sealed"] = @(val);
}

- (MSGraphContentType*) base
{
    if(!_base){
        _base = [[MSGraphContentType alloc] initWithDictionary: self.dictionary[@"base"]];
    }
    return _base;
}

- (void) setBase: (MSGraphContentType*) val
{
    _base = val;
    self.dictionary[@"base"] = val;
}

- (NSArray*) baseTypes
{
    if(!_baseTypes){
        
    NSMutableArray *baseTypesResult = [NSMutableArray array];
    NSArray *baseTypes = self.dictionary[@"baseTypes"];

    if ([baseTypes isKindOfClass:[NSArray class]]){
        for (id tempContentType in baseTypes){
            [baseTypesResult addObject:tempContentType];
        }
    }

    _baseTypes = baseTypesResult;
        
    }
    return _baseTypes;
}

- (void) setBaseTypes: (NSArray*) val
{
    _baseTypes = val;
    self.dictionary[@"baseTypes"] = val;
}

- (NSArray*) columnLinks
{
    if(!_columnLinks){
        
    NSMutableArray *columnLinksResult = [NSMutableArray array];
    NSArray *columnLinks = self.dictionary[@"columnLinks"];

    if ([columnLinks isKindOfClass:[NSArray class]]){
        for (id tempColumnLink in columnLinks){
            [columnLinksResult addObject:tempColumnLink];
        }
    }

    _columnLinks = columnLinksResult;
        
    }
    return _columnLinks;
}

- (void) setColumnLinks: (NSArray*) val
{
    _columnLinks = val;
    self.dictionary[@"columnLinks"] = val;
}

- (NSArray*) columnPositions
{
    if(!_columnPositions){
        
    NSMutableArray *columnPositionsResult = [NSMutableArray array];
    NSArray *columnPositions = self.dictionary[@"columnPositions"];

    if ([columnPositions isKindOfClass:[NSArray class]]){
        for (id tempColumnDefinition in columnPositions){
            [columnPositionsResult addObject:tempColumnDefinition];
        }
    }

    _columnPositions = columnPositionsResult;
        
    }
    return _columnPositions;
}

- (void) setColumnPositions: (NSArray*) val
{
    _columnPositions = val;
    self.dictionary[@"columnPositions"] = val;
}

- (NSArray*) columns
{
    if(!_columns){
        
    NSMutableArray *columnsResult = [NSMutableArray array];
    NSArray *columns = self.dictionary[@"columns"];

    if ([columns isKindOfClass:[NSArray class]]){
        for (id tempColumnDefinition in columns){
            [columnsResult addObject:tempColumnDefinition];
        }
    }

    _columns = columnsResult;
        
    }
    return _columns;
}

- (void) setColumns: (NSArray*) val
{
    _columns = val;
    self.dictionary[@"columns"] = val;
}


@end
