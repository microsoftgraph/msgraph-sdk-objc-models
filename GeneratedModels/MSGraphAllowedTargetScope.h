// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAllowedTargetScopeValue){

	MSGraphAllowedTargetScopeNotSpecified = 0,
	MSGraphAllowedTargetScopeSpecificDirectoryUsers = 1,
	MSGraphAllowedTargetScopeSpecificConnectedOrganizationUsers = 2,
	MSGraphAllowedTargetScopeSpecificDirectoryServicePrincipals = 3,
	MSGraphAllowedTargetScopeAllMemberUsers = 4,
	MSGraphAllowedTargetScopeAllDirectoryUsers = 5,
	MSGraphAllowedTargetScopeAllDirectoryServicePrincipals = 6,
	MSGraphAllowedTargetScopeAllConfiguredConnectedOrganizationUsers = 7,
	MSGraphAllowedTargetScopeAllExternalUsers = 8,
	MSGraphAllowedTargetScopeUnknownFutureValue = 10,
    MSGraphAllowedTargetScopeEndOfEnum
};

@interface MSGraphAllowedTargetScope : NSObject

+(MSGraphAllowedTargetScope*) notSpecified;
+(MSGraphAllowedTargetScope*) specificDirectoryUsers;
+(MSGraphAllowedTargetScope*) specificConnectedOrganizationUsers;
+(MSGraphAllowedTargetScope*) specificDirectoryServicePrincipals;
+(MSGraphAllowedTargetScope*) allMemberUsers;
+(MSGraphAllowedTargetScope*) allDirectoryUsers;
+(MSGraphAllowedTargetScope*) allDirectoryServicePrincipals;
+(MSGraphAllowedTargetScope*) allConfiguredConnectedOrganizationUsers;
+(MSGraphAllowedTargetScope*) allExternalUsers;
+(MSGraphAllowedTargetScope*) unknownFutureValue;

+(MSGraphAllowedTargetScope*) UnknownEnumValue;

+(MSGraphAllowedTargetScope*) allowedTargetScopeWithEnumValue:(MSGraphAllowedTargetScopeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAllowedTargetScopeValue enumValue;

@end


@interface NSString (MSGraphAllowedTargetScope)

- (MSGraphAllowedTargetScope*) toMSGraphAllowedTargetScope;

@end
