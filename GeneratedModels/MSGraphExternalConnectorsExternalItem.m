// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsExternalItem()
{
    MSGraphExternalConnectorsExternalItemContent* _content;
    MSGraphExternalConnectorsProperties* _properties;
}
@end

@implementation MSGraphExternalConnectorsExternalItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.externalItem";
    }
    return self;
}
- (MSGraphExternalConnectorsExternalItemContent*) content
{
    if(!_content){
        _content = [[MSGraphExternalConnectorsExternalItemContent alloc] initWithDictionary: self.dictionary[@"content"]];
    }
    return _content;
}

- (void) setContent: (MSGraphExternalConnectorsExternalItemContent*) val
{
    _content = val;
    self.dictionary[@"content"] = val;
}

- (MSGraphExternalConnectorsProperties*) properties
{
    if(!_properties){
        _properties = [[MSGraphExternalConnectorsProperties alloc] initWithDictionary: self.dictionary[@"properties"]];
    }
    return _properties;
}

- (void) setProperties: (MSGraphExternalConnectorsProperties*) val
{
    _properties = val;
    self.dictionary[@"properties"] = val;
}


@end
