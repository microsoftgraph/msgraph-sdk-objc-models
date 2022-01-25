// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExternalConnectorsIdentity()
{
    MSGraphExternalConnectorsIdentityType* _type;
}
@end

@implementation MSGraphExternalConnectorsIdentity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.externalConnectors.identity";
    }
    return self;
}
- (MSGraphExternalConnectorsIdentityType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphExternalConnectorsIdentityType];
    }
    return _type;
}

- (void) setType: (MSGraphExternalConnectorsIdentityType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}


@end
