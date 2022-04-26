// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkUserIdentityType.h"

@interface MSGraphTeamworkUserIdentityType () {
    MSGraphTeamworkUserIdentityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamworkUserIdentityTypeValue enumValue;
@end

@implementation MSGraphTeamworkUserIdentityType

+ (MSGraphTeamworkUserIdentityType*) aadUser {
    static MSGraphTeamworkUserIdentityType *_aadUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aadUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _aadUser.enumValue = MSGraphTeamworkUserIdentityTypeAadUser;
    });
    return _aadUser;
}
+ (MSGraphTeamworkUserIdentityType*) onPremiseAadUser {
    static MSGraphTeamworkUserIdentityType *_onPremiseAadUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onPremiseAadUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _onPremiseAadUser.enumValue = MSGraphTeamworkUserIdentityTypeOnPremiseAadUser;
    });
    return _onPremiseAadUser;
}
+ (MSGraphTeamworkUserIdentityType*) anonymousGuest {
    static MSGraphTeamworkUserIdentityType *_anonymousGuest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _anonymousGuest = [[MSGraphTeamworkUserIdentityType alloc] init];
        _anonymousGuest.enumValue = MSGraphTeamworkUserIdentityTypeAnonymousGuest;
    });
    return _anonymousGuest;
}
+ (MSGraphTeamworkUserIdentityType*) federatedUser {
    static MSGraphTeamworkUserIdentityType *_federatedUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _federatedUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _federatedUser.enumValue = MSGraphTeamworkUserIdentityTypeFederatedUser;
    });
    return _federatedUser;
}
+ (MSGraphTeamworkUserIdentityType*) personalMicrosoftAccountUser {
    static MSGraphTeamworkUserIdentityType *_personalMicrosoftAccountUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _personalMicrosoftAccountUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _personalMicrosoftAccountUser.enumValue = MSGraphTeamworkUserIdentityTypePersonalMicrosoftAccountUser;
    });
    return _personalMicrosoftAccountUser;
}
+ (MSGraphTeamworkUserIdentityType*) skypeUser {
    static MSGraphTeamworkUserIdentityType *_skypeUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _skypeUser.enumValue = MSGraphTeamworkUserIdentityTypeSkypeUser;
    });
    return _skypeUser;
}
+ (MSGraphTeamworkUserIdentityType*) phoneUser {
    static MSGraphTeamworkUserIdentityType *_phoneUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _phoneUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _phoneUser.enumValue = MSGraphTeamworkUserIdentityTypePhoneUser;
    });
    return _phoneUser;
}
+ (MSGraphTeamworkUserIdentityType*) unknownFutureValue {
    static MSGraphTeamworkUserIdentityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamworkUserIdentityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamworkUserIdentityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphTeamworkUserIdentityType*) emailUser {
    static MSGraphTeamworkUserIdentityType *_emailUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _emailUser = [[MSGraphTeamworkUserIdentityType alloc] init];
        _emailUser.enumValue = MSGraphTeamworkUserIdentityTypeEmailUser;
    });
    return _emailUser;
}

+ (MSGraphTeamworkUserIdentityType*) UnknownEnumValue {
    static MSGraphTeamworkUserIdentityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamworkUserIdentityType alloc] init];
        _unknownValue.enumValue = MSGraphTeamworkUserIdentityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamworkUserIdentityType*) teamworkUserIdentityTypeWithEnumValue:(MSGraphTeamworkUserIdentityTypeValue)val {

    switch(val)
    {
        case MSGraphTeamworkUserIdentityTypeAadUser:
            return [MSGraphTeamworkUserIdentityType aadUser];
        case MSGraphTeamworkUserIdentityTypeOnPremiseAadUser:
            return [MSGraphTeamworkUserIdentityType onPremiseAadUser];
        case MSGraphTeamworkUserIdentityTypeAnonymousGuest:
            return [MSGraphTeamworkUserIdentityType anonymousGuest];
        case MSGraphTeamworkUserIdentityTypeFederatedUser:
            return [MSGraphTeamworkUserIdentityType federatedUser];
        case MSGraphTeamworkUserIdentityTypePersonalMicrosoftAccountUser:
            return [MSGraphTeamworkUserIdentityType personalMicrosoftAccountUser];
        case MSGraphTeamworkUserIdentityTypeSkypeUser:
            return [MSGraphTeamworkUserIdentityType skypeUser];
        case MSGraphTeamworkUserIdentityTypePhoneUser:
            return [MSGraphTeamworkUserIdentityType phoneUser];
        case MSGraphTeamworkUserIdentityTypeUnknownFutureValue:
            return [MSGraphTeamworkUserIdentityType unknownFutureValue];
        case MSGraphTeamworkUserIdentityTypeEmailUser:
            return [MSGraphTeamworkUserIdentityType emailUser];
        case MSGraphTeamworkUserIdentityTypeEndOfEnum:
        default:
            return [MSGraphTeamworkUserIdentityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamworkUserIdentityTypeAadUser:
            return @"aadUser";
        case MSGraphTeamworkUserIdentityTypeOnPremiseAadUser:
            return @"onPremiseAadUser";
        case MSGraphTeamworkUserIdentityTypeAnonymousGuest:
            return @"anonymousGuest";
        case MSGraphTeamworkUserIdentityTypeFederatedUser:
            return @"federatedUser";
        case MSGraphTeamworkUserIdentityTypePersonalMicrosoftAccountUser:
            return @"personalMicrosoftAccountUser";
        case MSGraphTeamworkUserIdentityTypeSkypeUser:
            return @"skypeUser";
        case MSGraphTeamworkUserIdentityTypePhoneUser:
            return @"phoneUser";
        case MSGraphTeamworkUserIdentityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamworkUserIdentityTypeEmailUser:
            return @"emailUser";
        case MSGraphTeamworkUserIdentityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamworkUserIdentityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamworkUserIdentityType)

- (MSGraphTeamworkUserIdentityType*) toMSGraphTeamworkUserIdentityType{

    if([self isEqualToString:@"aadUser"])
    {
          return [MSGraphTeamworkUserIdentityType aadUser];
    }
    else if([self isEqualToString:@"onPremiseAadUser"])
    {
          return [MSGraphTeamworkUserIdentityType onPremiseAadUser];
    }
    else if([self isEqualToString:@"anonymousGuest"])
    {
          return [MSGraphTeamworkUserIdentityType anonymousGuest];
    }
    else if([self isEqualToString:@"federatedUser"])
    {
          return [MSGraphTeamworkUserIdentityType federatedUser];
    }
    else if([self isEqualToString:@"personalMicrosoftAccountUser"])
    {
          return [MSGraphTeamworkUserIdentityType personalMicrosoftAccountUser];
    }
    else if([self isEqualToString:@"skypeUser"])
    {
          return [MSGraphTeamworkUserIdentityType skypeUser];
    }
    else if([self isEqualToString:@"phoneUser"])
    {
          return [MSGraphTeamworkUserIdentityType phoneUser];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamworkUserIdentityType unknownFutureValue];
    }
    else if([self isEqualToString:@"emailUser"])
    {
          return [MSGraphTeamworkUserIdentityType emailUser];
    }
    else {
        return [MSGraphTeamworkUserIdentityType UnknownEnumValue];
    }
}

@end
