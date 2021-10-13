// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsExternalConnection()
{
    MSGraphExternalConnectorsConfiguration* _configuration;
    NSString* _externalConnectionDescription;
    NSString* _name;
    MSGraphExternalConnectorsConnectionState* _state;
    NSArray* _groups;
    NSArray* _items;
    NSArray* _externalConnectionOperations;
    MSGraphExternalConnectorsSchema* _schema;
}
@end

@implementation MSGraphExternalConnectorsExternalConnection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.externalConnection";
    }
    return self;
}
- (MSGraphExternalConnectorsConfiguration*) configuration
{
    if(!_configuration){
        _configuration = [[MSGraphExternalConnectorsConfiguration alloc] initWithDictionary: self.dictionary[@"configuration"]];
    }
    return _configuration;
}

- (void) setConfiguration: (MSGraphExternalConnectorsConfiguration*) val
{
    _configuration = val;
    self.dictionary[@"configuration"] = val;
}

- (NSString*) externalConnectionDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setExternalConnectionDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (MSGraphExternalConnectorsConnectionState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphExternalConnectorsConnectionState];
    }
    return _state;
}

- (void) setState: (MSGraphExternalConnectorsConnectionState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSArray*) groups
{
    if(!_groups){
        
    NSMutableArray *groupsResult = [NSMutableArray array];
    NSArray *groups = self.dictionary[@"groups"];

    if ([groups isKindOfClass:[NSArray class]]){
        for (id tempExternalGroup in groups){
            [groupsResult addObject:tempExternalGroup];
        }
    }

    _groups = groupsResult;
        
    }
    return _groups;
}

- (void) setGroups: (NSArray*) val
{
    _groups = val;
    self.dictionary[@"groups"] = val;
}

- (NSArray*) items
{
    if(!_items){
        
    NSMutableArray *itemsResult = [NSMutableArray array];
    NSArray *items = self.dictionary[@"items"];

    if ([items isKindOfClass:[NSArray class]]){
        for (id tempExternalItem in items){
            [itemsResult addObject:tempExternalItem];
        }
    }

    _items = itemsResult;
        
    }
    return _items;
}

- (void) setItems: (NSArray*) val
{
    _items = val;
    self.dictionary[@"items"] = val;
}

- (NSArray*) externalConnectionOperations
{
    if(!_externalConnectionOperations){
        
    NSMutableArray *externalConnectionOperationsResult = [NSMutableArray array];
    NSArray *externalConnectionOperations = self.dictionary[@"operations"];

    if ([externalConnectionOperations isKindOfClass:[NSArray class]]){
        for (id tempConnectionOperation in externalConnectionOperations){
            [externalConnectionOperationsResult addObject:tempConnectionOperation];
        }
    }

    _externalConnectionOperations = externalConnectionOperationsResult;
        
    }
    return _externalConnectionOperations;
}

- (void) setExternalConnectionOperations: (NSArray*) val
{
    _externalConnectionOperations = val;
    self.dictionary[@"operations"] = val;
}

- (MSGraphExternalConnectorsSchema*) schema
{
    if(!_schema){
        _schema = [[MSGraphExternalConnectorsSchema alloc] initWithDictionary: self.dictionary[@"schema"]];
    }
    return _schema;
}

- (void) setSchema: (MSGraphExternalConnectorsSchema*) val
{
    _schema = val;
    self.dictionary[@"schema"] = val;
}


@end
