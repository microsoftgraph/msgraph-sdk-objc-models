// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAllowedTargetScope.h"

@interface MSGraphAllowedTargetScope () {
    MSGraphAllowedTargetScopeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAllowedTargetScopeValue enumValue;
@end

@implementation MSGraphAllowedTargetScope

+ (MSGraphAllowedTargetScope*) notSpecified {
    static MSGraphAllowedTargetScope *_notSpecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSpecified = [[MSGraphAllowedTargetScope alloc] init];
        _notSpecified.enumValue = MSGraphAllowedTargetScopeNotSpecified;
    });
    return _notSpecified;
}
+ (MSGraphAllowedTargetScope*) specificDirectoryUsers {
    static MSGraphAllowedTargetScope *_specificDirectoryUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _specificDirectoryUsers = [[MSGraphAllowedTargetScope alloc] init];
        _specificDirectoryUsers.enumValue = MSGraphAllowedTargetScopeSpecificDirectoryUsers;
    });
    return _specificDirectoryUsers;
}
+ (MSGraphAllowedTargetScope*) specificConnectedOrganizationUsers {
    static MSGraphAllowedTargetScope *_specificConnectedOrganizationUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _specificConnectedOrganizationUsers = [[MSGraphAllowedTargetScope alloc] init];
        _specificConnectedOrganizationUsers.enumValue = MSGraphAllowedTargetScopeSpecificConnectedOrganizationUsers;
    });
    return _specificConnectedOrganizationUsers;
}
+ (MSGraphAllowedTargetScope*) specificDirectoryServicePrincipals {
    static MSGraphAllowedTargetScope *_specificDirectoryServicePrincipals;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _specificDirectoryServicePrincipals = [[MSGraphAllowedTargetScope alloc] init];
        _specificDirectoryServicePrincipals.enumValue = MSGraphAllowedTargetScopeSpecificDirectoryServicePrincipals;
    });
    return _specificDirectoryServicePrincipals;
}
+ (MSGraphAllowedTargetScope*) allMemberUsers {
    static MSGraphAllowedTargetScope *_allMemberUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allMemberUsers = [[MSGraphAllowedTargetScope alloc] init];
        _allMemberUsers.enumValue = MSGraphAllowedTargetScopeAllMemberUsers;
    });
    return _allMemberUsers;
}
+ (MSGraphAllowedTargetScope*) allDirectoryUsers {
    static MSGraphAllowedTargetScope *_allDirectoryUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allDirectoryUsers = [[MSGraphAllowedTargetScope alloc] init];
        _allDirectoryUsers.enumValue = MSGraphAllowedTargetScopeAllDirectoryUsers;
    });
    return _allDirectoryUsers;
}
+ (MSGraphAllowedTargetScope*) allDirectoryServicePrincipals {
    static MSGraphAllowedTargetScope *_allDirectoryServicePrincipals;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allDirectoryServicePrincipals = [[MSGraphAllowedTargetScope alloc] init];
        _allDirectoryServicePrincipals.enumValue = MSGraphAllowedTargetScopeAllDirectoryServicePrincipals;
    });
    return _allDirectoryServicePrincipals;
}
+ (MSGraphAllowedTargetScope*) allConfiguredConnectedOrganizationUsers {
    static MSGraphAllowedTargetScope *_allConfiguredConnectedOrganizationUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allConfiguredConnectedOrganizationUsers = [[MSGraphAllowedTargetScope alloc] init];
        _allConfiguredConnectedOrganizationUsers.enumValue = MSGraphAllowedTargetScopeAllConfiguredConnectedOrganizationUsers;
    });
    return _allConfiguredConnectedOrganizationUsers;
}
+ (MSGraphAllowedTargetScope*) allExternalUsers {
    static MSGraphAllowedTargetScope *_allExternalUsers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allExternalUsers = [[MSGraphAllowedTargetScope alloc] init];
        _allExternalUsers.enumValue = MSGraphAllowedTargetScopeAllExternalUsers;
    });
    return _allExternalUsers;
}
+ (MSGraphAllowedTargetScope*) unknownFutureValue {
    static MSGraphAllowedTargetScope *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAllowedTargetScope alloc] init];
        _unknownFutureValue.enumValue = MSGraphAllowedTargetScopeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAllowedTargetScope*) UnknownEnumValue {
    static MSGraphAllowedTargetScope *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAllowedTargetScope alloc] init];
        _unknownValue.enumValue = MSGraphAllowedTargetScopeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAllowedTargetScope*) allowedTargetScopeWithEnumValue:(MSGraphAllowedTargetScopeValue)val {

    switch(val)
    {
        case MSGraphAllowedTargetScopeNotSpecified:
            return [MSGraphAllowedTargetScope notSpecified];
        case MSGraphAllowedTargetScopeSpecificDirectoryUsers:
            return [MSGraphAllowedTargetScope specificDirectoryUsers];
        case MSGraphAllowedTargetScopeSpecificConnectedOrganizationUsers:
            return [MSGraphAllowedTargetScope specificConnectedOrganizationUsers];
        case MSGraphAllowedTargetScopeSpecificDirectoryServicePrincipals:
            return [MSGraphAllowedTargetScope specificDirectoryServicePrincipals];
        case MSGraphAllowedTargetScopeAllMemberUsers:
            return [MSGraphAllowedTargetScope allMemberUsers];
        case MSGraphAllowedTargetScopeAllDirectoryUsers:
            return [MSGraphAllowedTargetScope allDirectoryUsers];
        case MSGraphAllowedTargetScopeAllDirectoryServicePrincipals:
            return [MSGraphAllowedTargetScope allDirectoryServicePrincipals];
        case MSGraphAllowedTargetScopeAllConfiguredConnectedOrganizationUsers:
            return [MSGraphAllowedTargetScope allConfiguredConnectedOrganizationUsers];
        case MSGraphAllowedTargetScopeAllExternalUsers:
            return [MSGraphAllowedTargetScope allExternalUsers];
        case MSGraphAllowedTargetScopeUnknownFutureValue:
            return [MSGraphAllowedTargetScope unknownFutureValue];
        case MSGraphAllowedTargetScopeEndOfEnum:
        default:
            return [MSGraphAllowedTargetScope UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAllowedTargetScopeNotSpecified:
            return @"notSpecified";
        case MSGraphAllowedTargetScopeSpecificDirectoryUsers:
            return @"specificDirectoryUsers";
        case MSGraphAllowedTargetScopeSpecificConnectedOrganizationUsers:
            return @"specificConnectedOrganizationUsers";
        case MSGraphAllowedTargetScopeSpecificDirectoryServicePrincipals:
            return @"specificDirectoryServicePrincipals";
        case MSGraphAllowedTargetScopeAllMemberUsers:
            return @"allMemberUsers";
        case MSGraphAllowedTargetScopeAllDirectoryUsers:
            return @"allDirectoryUsers";
        case MSGraphAllowedTargetScopeAllDirectoryServicePrincipals:
            return @"allDirectoryServicePrincipals";
        case MSGraphAllowedTargetScopeAllConfiguredConnectedOrganizationUsers:
            return @"allConfiguredConnectedOrganizationUsers";
        case MSGraphAllowedTargetScopeAllExternalUsers:
            return @"allExternalUsers";
        case MSGraphAllowedTargetScopeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAllowedTargetScopeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAllowedTargetScopeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAllowedTargetScope)

- (MSGraphAllowedTargetScope*) toMSGraphAllowedTargetScope{

    if([self isEqualToString:@"notSpecified"])
    {
          return [MSGraphAllowedTargetScope notSpecified];
    }
    else if([self isEqualToString:@"specificDirectoryUsers"])
    {
          return [MSGraphAllowedTargetScope specificDirectoryUsers];
    }
    else if([self isEqualToString:@"specificConnectedOrganizationUsers"])
    {
          return [MSGraphAllowedTargetScope specificConnectedOrganizationUsers];
    }
    else if([self isEqualToString:@"specificDirectoryServicePrincipals"])
    {
          return [MSGraphAllowedTargetScope specificDirectoryServicePrincipals];
    }
    else if([self isEqualToString:@"allMemberUsers"])
    {
          return [MSGraphAllowedTargetScope allMemberUsers];
    }
    else if([self isEqualToString:@"allDirectoryUsers"])
    {
          return [MSGraphAllowedTargetScope allDirectoryUsers];
    }
    else if([self isEqualToString:@"allDirectoryServicePrincipals"])
    {
          return [MSGraphAllowedTargetScope allDirectoryServicePrincipals];
    }
    else if([self isEqualToString:@"allConfiguredConnectedOrganizationUsers"])
    {
          return [MSGraphAllowedTargetScope allConfiguredConnectedOrganizationUsers];
    }
    else if([self isEqualToString:@"allExternalUsers"])
    {
          return [MSGraphAllowedTargetScope allExternalUsers];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAllowedTargetScope unknownFutureValue];
    }
    else {
        return [MSGraphAllowedTargetScope UnknownEnumValue];
    }
}

@end
