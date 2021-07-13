// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsExternal()
{
    NSArray* _connections;
}
@end

@implementation MSGraphExternalConnectorsExternal

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.external";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (NSArray*) connections
{
    if(!_connections){
        
    NSMutableArray *connectionsResult = [NSMutableArray array];
    NSArray *connections = self.dictionary[@"connections"];

    if ([connections isKindOfClass:[NSArray class]]){
        for (id tempExternalConnection in connections){
            [connectionsResult addObject:tempExternalConnection];
        }
    }

    _connections = connectionsResult;
        
    }
    return _connections;
}

- (void) setConnections: (NSArray*) val
{
    _connections = val;
    self.dictionary[@"connections"] = val;
}


@end
