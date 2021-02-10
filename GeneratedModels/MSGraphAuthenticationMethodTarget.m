// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationMethodTarget()
{
    BOOL _isRegistrationRequired;
    MSGraphAuthenticationMethodTargetType* _targetType;
}
@end

@implementation MSGraphAuthenticationMethodTarget

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authenticationMethodTarget";
    }
    return self;
}
- (BOOL) isRegistrationRequired
{
    _isRegistrationRequired = [self.dictionary[@"isRegistrationRequired"] boolValue];
    return _isRegistrationRequired;
}

- (void) setIsRegistrationRequired: (BOOL) val
{
    _isRegistrationRequired = val;
    self.dictionary[@"isRegistrationRequired"] = @(val);
}

- (MSGraphAuthenticationMethodTargetType*) targetType
{
    if(!_targetType){
        _targetType = [self.dictionary[@"targetType"] toMSGraphAuthenticationMethodTargetType];
    }
    return _targetType;
}

- (void) setTargetType: (MSGraphAuthenticationMethodTargetType*) val
{
    _targetType = val;
    self.dictionary[@"targetType"] = val;
}


@end
