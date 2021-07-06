// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamworkApplicationIdentityTypeValue){

	MSGraphTeamworkApplicationIdentityTypeAadApplication = 0,
	MSGraphTeamworkApplicationIdentityTypeBot = 1,
	MSGraphTeamworkApplicationIdentityTypeTenantBot = 2,
	MSGraphTeamworkApplicationIdentityTypeOffice365Connector = 3,
	MSGraphTeamworkApplicationIdentityTypeOutgoingWebhook = 4,
	MSGraphTeamworkApplicationIdentityTypeUnknownFutureValue = 5,
    MSGraphTeamworkApplicationIdentityTypeEndOfEnum
};

@interface MSGraphTeamworkApplicationIdentityType : NSObject

+(MSGraphTeamworkApplicationIdentityType*) aadApplication;
+(MSGraphTeamworkApplicationIdentityType*) bot;
+(MSGraphTeamworkApplicationIdentityType*) tenantBot;
+(MSGraphTeamworkApplicationIdentityType*) office365Connector;
+(MSGraphTeamworkApplicationIdentityType*) outgoingWebhook;
+(MSGraphTeamworkApplicationIdentityType*) unknownFutureValue;

+(MSGraphTeamworkApplicationIdentityType*) UnknownEnumValue;

+(MSGraphTeamworkApplicationIdentityType*) teamworkApplicationIdentityTypeWithEnumValue:(MSGraphTeamworkApplicationIdentityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamworkApplicationIdentityTypeValue enumValue;

@end


@interface NSString (MSGraphTeamworkApplicationIdentityType)

- (MSGraphTeamworkApplicationIdentityType*) toMSGraphTeamworkApplicationIdentityType;

@end
