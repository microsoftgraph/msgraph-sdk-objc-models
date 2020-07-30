// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRoute()
{
    MSGraphRoutingType* _routingType;
    MSGraphIdentitySet* _original;
    MSGraphIdentitySet* _final;
}
@end

@implementation MSGraphCallRoute

- (MSGraphRoutingType*) routingType
{
    if(!_routingType){
        _routingType = [self.dictionary[@"routingType"] toMSGraphRoutingType];
    }
    return _routingType;
}

- (void) setRoutingType: (MSGraphRoutingType*) val
{
    _routingType = val;
    self.dictionary[@"routingType"] = val;
}

- (MSGraphIdentitySet*) original
{
    if(!_original){
        _original = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"original"]];
    }
    return _original;
}

- (void) setOriginal: (MSGraphIdentitySet*) val
{
    _original = val;
    self.dictionary[@"original"] = val;
}

- (MSGraphIdentitySet*) final
{
    if(!_final){
        _final = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"final"]];
    }
    return _final;
}

- (void) setFinal: (MSGraphIdentitySet*) val
{
    _final = val;
    self.dictionary[@"final"] = val;
}

@end
