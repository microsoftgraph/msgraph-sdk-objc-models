// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintService()
{
    NSArray* _endpoints;
}
@end

@implementation MSGraphPrintService

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printService";
    }
    return self;
}
- (NSArray*) endpoints
{
    if(!_endpoints){
        
    NSMutableArray *endpointsResult = [NSMutableArray array];
    NSArray *endpoints = self.dictionary[@"endpoints"];

    if ([endpoints isKindOfClass:[NSArray class]]){
        for (id tempPrintServiceEndpoint in endpoints){
            [endpointsResult addObject:tempPrintServiceEndpoint];
        }
    }

    _endpoints = endpointsResult;
        
    }
    return _endpoints;
}

- (void) setEndpoints: (NSArray*) val
{
    _endpoints = val;
    self.dictionary[@"endpoints"] = val;
}


@end
