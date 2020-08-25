// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentitySecurityDefaultsEnforcementPolicy()
{
    BOOL _isEnabled;
}
@end

@implementation MSGraphIdentitySecurityDefaultsEnforcementPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identitySecurityDefaultsEnforcementPolicy";
    }
    return self;
}
- (BOOL) isEnabled
{
    _isEnabled = [self.dictionary[@"isEnabled"] boolValue];
    return _isEnabled;
}

- (void) setIsEnabled: (BOOL) val
{
    _isEnabled = val;
    self.dictionary[@"isEnabled"] = @(val);
}


@end
