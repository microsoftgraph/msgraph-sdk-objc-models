// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLobbyBypassScope.h"

@interface MSGraphLobbyBypassScope () {
    MSGraphLobbyBypassScopeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLobbyBypassScopeValue enumValue;
@end

@implementation MSGraphLobbyBypassScope

+ (MSGraphLobbyBypassScope*) organizer {
    static MSGraphLobbyBypassScope *_organizer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organizer = [[MSGraphLobbyBypassScope alloc] init];
        _organizer.enumValue = MSGraphLobbyBypassScopeOrganizer;
    });
    return _organizer;
}
+ (MSGraphLobbyBypassScope*) organization {
    static MSGraphLobbyBypassScope *_organization;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organization = [[MSGraphLobbyBypassScope alloc] init];
        _organization.enumValue = MSGraphLobbyBypassScopeOrganization;
    });
    return _organization;
}
+ (MSGraphLobbyBypassScope*) organizationAndFederated {
    static MSGraphLobbyBypassScope *_organizationAndFederated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organizationAndFederated = [[MSGraphLobbyBypassScope alloc] init];
        _organizationAndFederated.enumValue = MSGraphLobbyBypassScopeOrganizationAndFederated;
    });
    return _organizationAndFederated;
}
+ (MSGraphLobbyBypassScope*) everyone {
    static MSGraphLobbyBypassScope *_everyone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyone = [[MSGraphLobbyBypassScope alloc] init];
        _everyone.enumValue = MSGraphLobbyBypassScopeEveryone;
    });
    return _everyone;
}
+ (MSGraphLobbyBypassScope*) unknownFutureValue {
    static MSGraphLobbyBypassScope *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphLobbyBypassScope alloc] init];
        _unknownFutureValue.enumValue = MSGraphLobbyBypassScopeUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphLobbyBypassScope*) invited {
    static MSGraphLobbyBypassScope *_invited;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _invited = [[MSGraphLobbyBypassScope alloc] init];
        _invited.enumValue = MSGraphLobbyBypassScopeInvited;
    });
    return _invited;
}
+ (MSGraphLobbyBypassScope*) organizationExcludingGuests {
    static MSGraphLobbyBypassScope *_organizationExcludingGuests;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organizationExcludingGuests = [[MSGraphLobbyBypassScope alloc] init];
        _organizationExcludingGuests.enumValue = MSGraphLobbyBypassScopeOrganizationExcludingGuests;
    });
    return _organizationExcludingGuests;
}

+ (MSGraphLobbyBypassScope*) UnknownEnumValue {
    static MSGraphLobbyBypassScope *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLobbyBypassScope alloc] init];
        _unknownValue.enumValue = MSGraphLobbyBypassScopeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLobbyBypassScope*) lobbyBypassScopeWithEnumValue:(MSGraphLobbyBypassScopeValue)val {

    switch(val)
    {
        case MSGraphLobbyBypassScopeOrganizer:
            return [MSGraphLobbyBypassScope organizer];
        case MSGraphLobbyBypassScopeOrganization:
            return [MSGraphLobbyBypassScope organization];
        case MSGraphLobbyBypassScopeOrganizationAndFederated:
            return [MSGraphLobbyBypassScope organizationAndFederated];
        case MSGraphLobbyBypassScopeEveryone:
            return [MSGraphLobbyBypassScope everyone];
        case MSGraphLobbyBypassScopeUnknownFutureValue:
            return [MSGraphLobbyBypassScope unknownFutureValue];
        case MSGraphLobbyBypassScopeInvited:
            return [MSGraphLobbyBypassScope invited];
        case MSGraphLobbyBypassScopeOrganizationExcludingGuests:
            return [MSGraphLobbyBypassScope organizationExcludingGuests];
        case MSGraphLobbyBypassScopeEndOfEnum:
        default:
            return [MSGraphLobbyBypassScope UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLobbyBypassScopeOrganizer:
            return @"organizer";
        case MSGraphLobbyBypassScopeOrganization:
            return @"organization";
        case MSGraphLobbyBypassScopeOrganizationAndFederated:
            return @"organizationAndFederated";
        case MSGraphLobbyBypassScopeEveryone:
            return @"everyone";
        case MSGraphLobbyBypassScopeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphLobbyBypassScopeInvited:
            return @"invited";
        case MSGraphLobbyBypassScopeOrganizationExcludingGuests:
            return @"organizationExcludingGuests";
        case MSGraphLobbyBypassScopeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLobbyBypassScopeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLobbyBypassScope)

- (MSGraphLobbyBypassScope*) toMSGraphLobbyBypassScope{

    if([self isEqualToString:@"organizer"])
    {
          return [MSGraphLobbyBypassScope organizer];
    }
    else if([self isEqualToString:@"organization"])
    {
          return [MSGraphLobbyBypassScope organization];
    }
    else if([self isEqualToString:@"organizationAndFederated"])
    {
          return [MSGraphLobbyBypassScope organizationAndFederated];
    }
    else if([self isEqualToString:@"everyone"])
    {
          return [MSGraphLobbyBypassScope everyone];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphLobbyBypassScope unknownFutureValue];
    }
    else if([self isEqualToString:@"invited"])
    {
          return [MSGraphLobbyBypassScope invited];
    }
    else if([self isEqualToString:@"organizationExcludingGuests"])
    {
          return [MSGraphLobbyBypassScope organizationExcludingGuests];
    }
    else {
        return [MSGraphLobbyBypassScope UnknownEnumValue];
    }
}

@end
