// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthentication()
{
    NSArray* _fido2Methods;
    NSArray* _methods;
    NSArray* _microsoftAuthenticatorMethods;
    NSArray* _windowsHelloForBusinessMethods;
}
@end

@implementation MSGraphAuthentication

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authentication";
    }
    return self;
}
- (NSArray*) fido2Methods
{
    if(!_fido2Methods){
        
    NSMutableArray *fido2MethodsResult = [NSMutableArray array];
    NSArray *fido2Methods = self.dictionary[@"fido2Methods"];

    if ([fido2Methods isKindOfClass:[NSArray class]]){
        for (id tempFido2AuthenticationMethod in fido2Methods){
            [fido2MethodsResult addObject:tempFido2AuthenticationMethod];
        }
    }

    _fido2Methods = fido2MethodsResult;
        
    }
    return _fido2Methods;
}

- (void) setFido2Methods: (NSArray*) val
{
    _fido2Methods = val;
    self.dictionary[@"fido2Methods"] = val;
}

- (NSArray*) methods
{
    if(!_methods){
        
    NSMutableArray *methodsResult = [NSMutableArray array];
    NSArray *methods = self.dictionary[@"methods"];

    if ([methods isKindOfClass:[NSArray class]]){
        for (id tempAuthenticationMethod in methods){
            [methodsResult addObject:tempAuthenticationMethod];
        }
    }

    _methods = methodsResult;
        
    }
    return _methods;
}

- (void) setMethods: (NSArray*) val
{
    _methods = val;
    self.dictionary[@"methods"] = val;
}

- (NSArray*) microsoftAuthenticatorMethods
{
    if(!_microsoftAuthenticatorMethods){
        
    NSMutableArray *microsoftAuthenticatorMethodsResult = [NSMutableArray array];
    NSArray *microsoftAuthenticatorMethods = self.dictionary[@"microsoftAuthenticatorMethods"];

    if ([microsoftAuthenticatorMethods isKindOfClass:[NSArray class]]){
        for (id tempMicrosoftAuthenticatorAuthenticationMethod in microsoftAuthenticatorMethods){
            [microsoftAuthenticatorMethodsResult addObject:tempMicrosoftAuthenticatorAuthenticationMethod];
        }
    }

    _microsoftAuthenticatorMethods = microsoftAuthenticatorMethodsResult;
        
    }
    return _microsoftAuthenticatorMethods;
}

- (void) setMicrosoftAuthenticatorMethods: (NSArray*) val
{
    _microsoftAuthenticatorMethods = val;
    self.dictionary[@"microsoftAuthenticatorMethods"] = val;
}

- (NSArray*) windowsHelloForBusinessMethods
{
    if(!_windowsHelloForBusinessMethods){
        
    NSMutableArray *windowsHelloForBusinessMethodsResult = [NSMutableArray array];
    NSArray *windowsHelloForBusinessMethods = self.dictionary[@"windowsHelloForBusinessMethods"];

    if ([windowsHelloForBusinessMethods isKindOfClass:[NSArray class]]){
        for (id tempWindowsHelloForBusinessAuthenticationMethod in windowsHelloForBusinessMethods){
            [windowsHelloForBusinessMethodsResult addObject:tempWindowsHelloForBusinessAuthenticationMethod];
        }
    }

    _windowsHelloForBusinessMethods = windowsHelloForBusinessMethodsResult;
        
    }
    return _windowsHelloForBusinessMethods;
}

- (void) setWindowsHelloForBusinessMethods: (NSArray*) val
{
    _windowsHelloForBusinessMethods = val;
    self.dictionary[@"windowsHelloForBusinessMethods"] = val;
}


@end
