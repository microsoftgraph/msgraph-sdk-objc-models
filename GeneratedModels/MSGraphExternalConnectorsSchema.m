// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsSchema()
{
    NSString* _baseType;
    NSArray* _properties;
}
@end

@implementation MSGraphExternalConnectorsSchema

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.schema";
    }
    return self;
}
- (NSString*) baseType
{
    return self.dictionary[@"baseType"];
}

- (void) setBaseType: (NSString*) val
{
    self.dictionary[@"baseType"] = val;
}

- (NSArray*) properties
{
    if(!_properties){
        
    NSMutableArray *propertiesResult = [NSMutableArray array];
    NSArray *properties = self.dictionary[@"properties"];

    if ([properties isKindOfClass:[NSArray class]]){
        for (id tempProperty in properties){
            [propertiesResult addObject:tempProperty];
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


@end
