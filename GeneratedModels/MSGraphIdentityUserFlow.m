// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityUserFlow()
{
    MSGraphUserFlowType* _userFlowType;
    double _userFlowTypeVersion;
}
@end

@implementation MSGraphIdentityUserFlow

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityUserFlow";
    }
    return self;
}
- (MSGraphUserFlowType*) userFlowType
{
    if(!_userFlowType){
        _userFlowType = [self.dictionary[@"userFlowType"] toMSGraphUserFlowType];
    }
    return _userFlowType;
}

- (void) setUserFlowType: (MSGraphUserFlowType*) val
{
    _userFlowType = val;
    self.dictionary[@"userFlowType"] = val;
}

- (double) userFlowTypeVersion
{
    _userFlowTypeVersion = [self.dictionary[@"userFlowTypeVersion"] floatValue];
    return _userFlowTypeVersion;
}

- (void) setUserFlowTypeVersion: (double) val
{
    _userFlowTypeVersion = val;
    self.dictionary[@"userFlowTypeVersion"] = @(val);
}


@end
