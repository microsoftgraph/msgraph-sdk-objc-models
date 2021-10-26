// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryUnifiedGroupSource()
{
    MSGraphEdiscoverySourceType* _includedSources;
    MSGraphGroup* _group;
}
@end

@implementation MSGraphEdiscoveryUnifiedGroupSource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.unifiedGroupSource";
    }
    return self;
}
- (MSGraphEdiscoverySourceType*) includedSources
{
    if(!_includedSources){
        _includedSources = [self.dictionary[@"includedSources"] toMSGraphEdiscoverySourceType];
    }
    return _includedSources;
}

- (void) setIncludedSources: (MSGraphEdiscoverySourceType*) val
{
    _includedSources = val;
    self.dictionary[@"includedSources"] = val;
}

- (MSGraphGroup*) group
{
    if(!_group){
        _group = [[MSGraphGroup alloc] initWithDictionary: self.dictionary[@"group"]];
    }
    return _group;
}

- (void) setGroup: (MSGraphGroup*) val
{
    _group = val;
    self.dictionary[@"group"] = val;
}


@end
