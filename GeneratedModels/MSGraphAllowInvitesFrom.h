// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAllowInvitesFromValue){

	MSGraphAllowInvitesFromNone = 0,
	MSGraphAllowInvitesFromAdminsAndGuestInviters = 1,
	MSGraphAllowInvitesFromAdminsGuestInvitersAndAllMembers = 2,
	MSGraphAllowInvitesFromEveryone = 3,
	MSGraphAllowInvitesFromUnknownFutureValue = 4,
    MSGraphAllowInvitesFromEndOfEnum
};

@interface MSGraphAllowInvitesFrom : NSObject

+(MSGraphAllowInvitesFrom*) none;
+(MSGraphAllowInvitesFrom*) adminsAndGuestInviters;
+(MSGraphAllowInvitesFrom*) adminsGuestInvitersAndAllMembers;
+(MSGraphAllowInvitesFrom*) everyone;
+(MSGraphAllowInvitesFrom*) unknownFutureValue;

+(MSGraphAllowInvitesFrom*) UnknownEnumValue;

+(MSGraphAllowInvitesFrom*) allowInvitesFromWithEnumValue:(MSGraphAllowInvitesFromValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAllowInvitesFromValue enumValue;

@end


@interface NSString (MSGraphAllowInvitesFrom)

- (MSGraphAllowInvitesFrom*) toMSGraphAllowInvitesFrom;

@end
