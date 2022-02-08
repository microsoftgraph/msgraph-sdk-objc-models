// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAudioRoutingGroup()
{
    NSArray* _receivers;
    MSGraphRoutingMode* _routingMode;
    NSArray* _sources;
}
@end

@implementation MSGraphAudioRoutingGroup

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.audioRoutingGroup";
    }
    return self;
}
- (NSArray*) receivers
{
    if([[NSNull null] isEqual:self.dictionary[@"receivers"]])
    {
        return nil;
    }   
    return self.dictionary[@"receivers"];
}

- (void) setReceivers: (NSArray*) val
{
    self.dictionary[@"receivers"] = val;
}

- (MSGraphRoutingMode*) routingMode
{
    if(!_routingMode){
        _routingMode = [self.dictionary[@"routingMode"] toMSGraphRoutingMode];
    }
    return _routingMode;
}

- (void) setRoutingMode: (MSGraphRoutingMode*) val
{
    _routingMode = val;
    self.dictionary[@"routingMode"] = val;
}

- (NSArray*) sources
{
    if([[NSNull null] isEqual:self.dictionary[@"sources"]])
    {
        return nil;
    }   
    return self.dictionary[@"sources"];
}

- (void) setSources: (NSArray*) val
{
    self.dictionary[@"sources"] = val;
}


@end
