// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphUserFlowType.h"

@interface MSGraphUserFlowType () {
    MSGraphUserFlowTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphUserFlowTypeValue enumValue;
@end

@implementation MSGraphUserFlowType

+ (MSGraphUserFlowType*) signUp {
    static MSGraphUserFlowType *_signUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _signUp = [[MSGraphUserFlowType alloc] init];
        _signUp.enumValue = MSGraphUserFlowTypeSignUp;
    });
    return _signUp;
}
+ (MSGraphUserFlowType*) signIn {
    static MSGraphUserFlowType *_signIn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _signIn = [[MSGraphUserFlowType alloc] init];
        _signIn.enumValue = MSGraphUserFlowTypeSignIn;
    });
    return _signIn;
}
+ (MSGraphUserFlowType*) signUpOrSignIn {
    static MSGraphUserFlowType *_signUpOrSignIn;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _signUpOrSignIn = [[MSGraphUserFlowType alloc] init];
        _signUpOrSignIn.enumValue = MSGraphUserFlowTypeSignUpOrSignIn;
    });
    return _signUpOrSignIn;
}
+ (MSGraphUserFlowType*) passwordReset {
    static MSGraphUserFlowType *_passwordReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _passwordReset = [[MSGraphUserFlowType alloc] init];
        _passwordReset.enumValue = MSGraphUserFlowTypePasswordReset;
    });
    return _passwordReset;
}
+ (MSGraphUserFlowType*) profileUpdate {
    static MSGraphUserFlowType *_profileUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _profileUpdate = [[MSGraphUserFlowType alloc] init];
        _profileUpdate.enumValue = MSGraphUserFlowTypeProfileUpdate;
    });
    return _profileUpdate;
}
+ (MSGraphUserFlowType*) resourceOwner {
    static MSGraphUserFlowType *_resourceOwner;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resourceOwner = [[MSGraphUserFlowType alloc] init];
        _resourceOwner.enumValue = MSGraphUserFlowTypeResourceOwner;
    });
    return _resourceOwner;
}
+ (MSGraphUserFlowType*) unknownFutureValue {
    static MSGraphUserFlowType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphUserFlowType alloc] init];
        _unknownFutureValue.enumValue = MSGraphUserFlowTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphUserFlowType*) UnknownEnumValue {
    static MSGraphUserFlowType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphUserFlowType alloc] init];
        _unknownValue.enumValue = MSGraphUserFlowTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphUserFlowType*) userFlowTypeWithEnumValue:(MSGraphUserFlowTypeValue)val {

    switch(val)
    {
        case MSGraphUserFlowTypeSignUp:
            return [MSGraphUserFlowType signUp];
        case MSGraphUserFlowTypeSignIn:
            return [MSGraphUserFlowType signIn];
        case MSGraphUserFlowTypeSignUpOrSignIn:
            return [MSGraphUserFlowType signUpOrSignIn];
        case MSGraphUserFlowTypePasswordReset:
            return [MSGraphUserFlowType passwordReset];
        case MSGraphUserFlowTypeProfileUpdate:
            return [MSGraphUserFlowType profileUpdate];
        case MSGraphUserFlowTypeResourceOwner:
            return [MSGraphUserFlowType resourceOwner];
        case MSGraphUserFlowTypeUnknownFutureValue:
            return [MSGraphUserFlowType unknownFutureValue];
        case MSGraphUserFlowTypeEndOfEnum:
        default:
            return [MSGraphUserFlowType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphUserFlowTypeSignUp:
            return @"signUp";
        case MSGraphUserFlowTypeSignIn:
            return @"signIn";
        case MSGraphUserFlowTypeSignUpOrSignIn:
            return @"signUpOrSignIn";
        case MSGraphUserFlowTypePasswordReset:
            return @"passwordReset";
        case MSGraphUserFlowTypeProfileUpdate:
            return @"profileUpdate";
        case MSGraphUserFlowTypeResourceOwner:
            return @"resourceOwner";
        case MSGraphUserFlowTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphUserFlowTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphUserFlowTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphUserFlowType)

- (MSGraphUserFlowType*) toMSGraphUserFlowType{

    if([self isEqualToString:@"signUp"])
    {
          return [MSGraphUserFlowType signUp];
    }
    else if([self isEqualToString:@"signIn"])
    {
          return [MSGraphUserFlowType signIn];
    }
    else if([self isEqualToString:@"signUpOrSignIn"])
    {
          return [MSGraphUserFlowType signUpOrSignIn];
    }
    else if([self isEqualToString:@"passwordReset"])
    {
          return [MSGraphUserFlowType passwordReset];
    }
    else if([self isEqualToString:@"profileUpdate"])
    {
          return [MSGraphUserFlowType profileUpdate];
    }
    else if([self isEqualToString:@"resourceOwner"])
    {
          return [MSGraphUserFlowType resourceOwner];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphUserFlowType unknownFutureValue];
    }
    else {
        return [MSGraphUserFlowType UnknownEnumValue];
    }
}

@end
