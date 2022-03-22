// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMicrosoftAuthenticatorAuthenticationMethodTarget()
{
    MSGraphMicrosoftAuthenticatorAuthenticationMode* _authenticationMode;
}
@end

@implementation MSGraphMicrosoftAuthenticatorAuthenticationMethodTarget

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget";
    }
    return self;
}
- (MSGraphMicrosoftAuthenticatorAuthenticationMode*) authenticationMode
{
    if(!_authenticationMode){
        _authenticationMode = [self.dictionary[@"authenticationMode"] toMSGraphMicrosoftAuthenticatorAuthenticationMode];
    }
    return _authenticationMode;
}

- (void) setAuthenticationMode: (MSGraphMicrosoftAuthenticatorAuthenticationMode*) val
{
    _authenticationMode = val;
    self.dictionary[@"authenticationMode"] = val;
}


@end
