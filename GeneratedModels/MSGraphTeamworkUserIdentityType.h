// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamworkUserIdentityTypeValue){

	MSGraphTeamworkUserIdentityTypeAadUser = 0,
	MSGraphTeamworkUserIdentityTypeOnPremiseAadUser = 1,
	MSGraphTeamworkUserIdentityTypeAnonymousGuest = 2,
	MSGraphTeamworkUserIdentityTypeFederatedUser = 3,
	MSGraphTeamworkUserIdentityTypePersonalMicrosoftAccountUser = 4,
	MSGraphTeamworkUserIdentityTypeSkypeUser = 5,
	MSGraphTeamworkUserIdentityTypePhoneUser = 6,
	MSGraphTeamworkUserIdentityTypeUnknownFutureValue = 7,
	MSGraphTeamworkUserIdentityTypeEmailUser = 8,
    MSGraphTeamworkUserIdentityTypeEndOfEnum
};

@interface MSGraphTeamworkUserIdentityType : NSObject

+(MSGraphTeamworkUserIdentityType*) aadUser;
+(MSGraphTeamworkUserIdentityType*) onPremiseAadUser;
+(MSGraphTeamworkUserIdentityType*) anonymousGuest;
+(MSGraphTeamworkUserIdentityType*) federatedUser;
+(MSGraphTeamworkUserIdentityType*) personalMicrosoftAccountUser;
+(MSGraphTeamworkUserIdentityType*) skypeUser;
+(MSGraphTeamworkUserIdentityType*) phoneUser;
+(MSGraphTeamworkUserIdentityType*) unknownFutureValue;
+(MSGraphTeamworkUserIdentityType*) emailUser;

+(MSGraphTeamworkUserIdentityType*) UnknownEnumValue;

+(MSGraphTeamworkUserIdentityType*) teamworkUserIdentityTypeWithEnumValue:(MSGraphTeamworkUserIdentityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamworkUserIdentityTypeValue enumValue;

@end


@interface NSString (MSGraphTeamworkUserIdentityType)

- (MSGraphTeamworkUserIdentityType*) toMSGraphTeamworkUserIdentityType;

@end
