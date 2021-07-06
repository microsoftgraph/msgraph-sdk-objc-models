// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkApplicationIdentityType.h"

@interface MSGraphTeamworkApplicationIdentityType () {
    MSGraphTeamworkApplicationIdentityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamworkApplicationIdentityTypeValue enumValue;
@end

@implementation MSGraphTeamworkApplicationIdentityType

+ (MSGraphTeamworkApplicationIdentityType*) aadApplication {
    static MSGraphTeamworkApplicationIdentityType *_aadApplication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aadApplication = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _aadApplication.enumValue = MSGraphTeamworkApplicationIdentityTypeAadApplication;
    });
    return _aadApplication;
}
+ (MSGraphTeamworkApplicationIdentityType*) bot {
    static MSGraphTeamworkApplicationIdentityType *_bot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bot = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _bot.enumValue = MSGraphTeamworkApplicationIdentityTypeBot;
    });
    return _bot;
}
+ (MSGraphTeamworkApplicationIdentityType*) tenantBot {
    static MSGraphTeamworkApplicationIdentityType *_tenantBot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tenantBot = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _tenantBot.enumValue = MSGraphTeamworkApplicationIdentityTypeTenantBot;
    });
    return _tenantBot;
}
+ (MSGraphTeamworkApplicationIdentityType*) office365Connector {
    static MSGraphTeamworkApplicationIdentityType *_office365Connector;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _office365Connector = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _office365Connector.enumValue = MSGraphTeamworkApplicationIdentityTypeOffice365Connector;
    });
    return _office365Connector;
}
+ (MSGraphTeamworkApplicationIdentityType*) outgoingWebhook {
    static MSGraphTeamworkApplicationIdentityType *_outgoingWebhook;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outgoingWebhook = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _outgoingWebhook.enumValue = MSGraphTeamworkApplicationIdentityTypeOutgoingWebhook;
    });
    return _outgoingWebhook;
}
+ (MSGraphTeamworkApplicationIdentityType*) unknownFutureValue {
    static MSGraphTeamworkApplicationIdentityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamworkApplicationIdentityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamworkApplicationIdentityType*) UnknownEnumValue {
    static MSGraphTeamworkApplicationIdentityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamworkApplicationIdentityType alloc] init];
        _unknownValue.enumValue = MSGraphTeamworkApplicationIdentityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamworkApplicationIdentityType*) teamworkApplicationIdentityTypeWithEnumValue:(MSGraphTeamworkApplicationIdentityTypeValue)val {

    switch(val)
    {
        case MSGraphTeamworkApplicationIdentityTypeAadApplication:
            return [MSGraphTeamworkApplicationIdentityType aadApplication];
        case MSGraphTeamworkApplicationIdentityTypeBot:
            return [MSGraphTeamworkApplicationIdentityType bot];
        case MSGraphTeamworkApplicationIdentityTypeTenantBot:
            return [MSGraphTeamworkApplicationIdentityType tenantBot];
        case MSGraphTeamworkApplicationIdentityTypeOffice365Connector:
            return [MSGraphTeamworkApplicationIdentityType office365Connector];
        case MSGraphTeamworkApplicationIdentityTypeOutgoingWebhook:
            return [MSGraphTeamworkApplicationIdentityType outgoingWebhook];
        case MSGraphTeamworkApplicationIdentityTypeUnknownFutureValue:
            return [MSGraphTeamworkApplicationIdentityType unknownFutureValue];
        case MSGraphTeamworkApplicationIdentityTypeEndOfEnum:
        default:
            return [MSGraphTeamworkApplicationIdentityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamworkApplicationIdentityTypeAadApplication:
            return @"aadApplication";
        case MSGraphTeamworkApplicationIdentityTypeBot:
            return @"bot";
        case MSGraphTeamworkApplicationIdentityTypeTenantBot:
            return @"tenantBot";
        case MSGraphTeamworkApplicationIdentityTypeOffice365Connector:
            return @"office365Connector";
        case MSGraphTeamworkApplicationIdentityTypeOutgoingWebhook:
            return @"outgoingWebhook";
        case MSGraphTeamworkApplicationIdentityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamworkApplicationIdentityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamworkApplicationIdentityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamworkApplicationIdentityType)

- (MSGraphTeamworkApplicationIdentityType*) toMSGraphTeamworkApplicationIdentityType{

    if([self isEqualToString:@"aadApplication"])
    {
          return [MSGraphTeamworkApplicationIdentityType aadApplication];
    }
    else if([self isEqualToString:@"bot"])
    {
          return [MSGraphTeamworkApplicationIdentityType bot];
    }
    else if([self isEqualToString:@"tenantBot"])
    {
          return [MSGraphTeamworkApplicationIdentityType tenantBot];
    }
    else if([self isEqualToString:@"office365Connector"])
    {
          return [MSGraphTeamworkApplicationIdentityType office365Connector];
    }
    else if([self isEqualToString:@"outgoingWebhook"])
    {
          return [MSGraphTeamworkApplicationIdentityType outgoingWebhook];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamworkApplicationIdentityType unknownFutureValue];
    }
    else {
        return [MSGraphTeamworkApplicationIdentityType UnknownEnumValue];
    }
}

@end
