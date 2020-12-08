// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAllowInvitesFrom.h"

@interface MSGraphAllowInvitesFrom () {
    MSGraphAllowInvitesFromValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAllowInvitesFromValue enumValue;
@end

@implementation MSGraphAllowInvitesFrom

+ (MSGraphAllowInvitesFrom*) none {
    static MSGraphAllowInvitesFrom *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphAllowInvitesFrom alloc] init];
        _none.enumValue = MSGraphAllowInvitesFromNone;
    });
    return _none;
}
+ (MSGraphAllowInvitesFrom*) adminsAndGuestInviters {
    static MSGraphAllowInvitesFrom *_adminsAndGuestInviters;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminsAndGuestInviters = [[MSGraphAllowInvitesFrom alloc] init];
        _adminsAndGuestInviters.enumValue = MSGraphAllowInvitesFromAdminsAndGuestInviters;
    });
    return _adminsAndGuestInviters;
}
+ (MSGraphAllowInvitesFrom*) adminsGuestInvitersAndAllMembers {
    static MSGraphAllowInvitesFrom *_adminsGuestInvitersAndAllMembers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminsGuestInvitersAndAllMembers = [[MSGraphAllowInvitesFrom alloc] init];
        _adminsGuestInvitersAndAllMembers.enumValue = MSGraphAllowInvitesFromAdminsGuestInvitersAndAllMembers;
    });
    return _adminsGuestInvitersAndAllMembers;
}
+ (MSGraphAllowInvitesFrom*) everyone {
    static MSGraphAllowInvitesFrom *_everyone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyone = [[MSGraphAllowInvitesFrom alloc] init];
        _everyone.enumValue = MSGraphAllowInvitesFromEveryone;
    });
    return _everyone;
}
+ (MSGraphAllowInvitesFrom*) unknownFutureValue {
    static MSGraphAllowInvitesFrom *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAllowInvitesFrom alloc] init];
        _unknownFutureValue.enumValue = MSGraphAllowInvitesFromUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAllowInvitesFrom*) UnknownEnumValue {
    static MSGraphAllowInvitesFrom *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAllowInvitesFrom alloc] init];
        _unknownValue.enumValue = MSGraphAllowInvitesFromEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAllowInvitesFrom*) allowInvitesFromWithEnumValue:(MSGraphAllowInvitesFromValue)val {

    switch(val)
    {
        case MSGraphAllowInvitesFromNone:
            return [MSGraphAllowInvitesFrom none];
        case MSGraphAllowInvitesFromAdminsAndGuestInviters:
            return [MSGraphAllowInvitesFrom adminsAndGuestInviters];
        case MSGraphAllowInvitesFromAdminsGuestInvitersAndAllMembers:
            return [MSGraphAllowInvitesFrom adminsGuestInvitersAndAllMembers];
        case MSGraphAllowInvitesFromEveryone:
            return [MSGraphAllowInvitesFrom everyone];
        case MSGraphAllowInvitesFromUnknownFutureValue:
            return [MSGraphAllowInvitesFrom unknownFutureValue];
        case MSGraphAllowInvitesFromEndOfEnum:
        default:
            return [MSGraphAllowInvitesFrom UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAllowInvitesFromNone:
            return @"none";
        case MSGraphAllowInvitesFromAdminsAndGuestInviters:
            return @"adminsAndGuestInviters";
        case MSGraphAllowInvitesFromAdminsGuestInvitersAndAllMembers:
            return @"adminsGuestInvitersAndAllMembers";
        case MSGraphAllowInvitesFromEveryone:
            return @"everyone";
        case MSGraphAllowInvitesFromUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAllowInvitesFromEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAllowInvitesFromValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAllowInvitesFrom)

- (MSGraphAllowInvitesFrom*) toMSGraphAllowInvitesFrom{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphAllowInvitesFrom none];
    }
    else if([self isEqualToString:@"adminsAndGuestInviters"])
    {
          return [MSGraphAllowInvitesFrom adminsAndGuestInviters];
    }
    else if([self isEqualToString:@"adminsGuestInvitersAndAllMembers"])
    {
          return [MSGraphAllowInvitesFrom adminsGuestInvitersAndAllMembers];
    }
    else if([self isEqualToString:@"everyone"])
    {
          return [MSGraphAllowInvitesFrom everyone];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAllowInvitesFrom unknownFutureValue];
    }
    else {
        return [MSGraphAllowInvitesFrom UnknownEnumValue];
    }
}

@end
