// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryUserSource()
{
    NSString* _email;
    MSGraphEdiscoverySourceType* _includedSources;
}
@end

@implementation MSGraphEdiscoveryUserSource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.userSource";
    }
    return self;
}
- (NSString*) email
{
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
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


@end
