// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamworkConversationIdentityTypeValue){

	MSGraphTeamworkConversationIdentityTypeTeam = 0,
	MSGraphTeamworkConversationIdentityTypeChannel = 1,
	MSGraphTeamworkConversationIdentityTypeChat = 2,
	MSGraphTeamworkConversationIdentityTypeUnknownFutureValue = 3,
    MSGraphTeamworkConversationIdentityTypeEndOfEnum
};

@interface MSGraphTeamworkConversationIdentityType : NSObject

+(MSGraphTeamworkConversationIdentityType*) team;
+(MSGraphTeamworkConversationIdentityType*) channel;
+(MSGraphTeamworkConversationIdentityType*) chat;
+(MSGraphTeamworkConversationIdentityType*) unknownFutureValue;

+(MSGraphTeamworkConversationIdentityType*) UnknownEnumValue;

+(MSGraphTeamworkConversationIdentityType*) teamworkConversationIdentityTypeWithEnumValue:(MSGraphTeamworkConversationIdentityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamworkConversationIdentityTypeValue enumValue;

@end


@interface NSString (MSGraphTeamworkConversationIdentityType)

- (MSGraphTeamworkConversationIdentityType*) toMSGraphTeamworkConversationIdentityType;

@end
