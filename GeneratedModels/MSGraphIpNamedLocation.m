// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIpNamedLocation()
{
    NSArray* _ipRanges;
    BOOL _isTrusted;
}
@end

@implementation MSGraphIpNamedLocation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ipNamedLocation";
    }
    return self;
}
- (NSArray*) ipRanges
{
    if(!_ipRanges){
        
    NSMutableArray *ipRangesResult = [NSMutableArray array];
    NSArray *ipRanges = self.dictionary[@"ipRanges"];

    if ([ipRanges isKindOfClass:[NSArray class]]){
        for (id tempIpRange in ipRanges){
            [ipRangesResult addObject:tempIpRange];
        }
    }

    _ipRanges = ipRangesResult;
        
    }
    return _ipRanges;
}

- (void) setIpRanges: (NSArray*) val
{
    _ipRanges = val;
    self.dictionary[@"ipRanges"] = val;
}

- (BOOL) isTrusted
{
    _isTrusted = [self.dictionary[@"isTrusted"] boolValue];
    return _isTrusted;
}

- (void) setIsTrusted: (BOOL) val
{
    _isTrusted = val;
    self.dictionary[@"isTrusted"] = @(val);
}


@end
