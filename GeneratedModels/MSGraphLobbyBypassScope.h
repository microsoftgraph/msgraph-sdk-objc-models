// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLobbyBypassScopeValue){

	MSGraphLobbyBypassScopeOrganizer = 0,
	MSGraphLobbyBypassScopeOrganization = 1,
	MSGraphLobbyBypassScopeOrganizationAndFederated = 2,
	MSGraphLobbyBypassScopeEveryone = 3,
	MSGraphLobbyBypassScopeUnknownFutureValue = 4,
	MSGraphLobbyBypassScopeInvited = 5,
	MSGraphLobbyBypassScopeOrganizationExcludingGuests = 6,
    MSGraphLobbyBypassScopeEndOfEnum
};

@interface MSGraphLobbyBypassScope : NSObject

+(MSGraphLobbyBypassScope*) organizer;
+(MSGraphLobbyBypassScope*) organization;
+(MSGraphLobbyBypassScope*) organizationAndFederated;
+(MSGraphLobbyBypassScope*) everyone;
+(MSGraphLobbyBypassScope*) unknownFutureValue;
+(MSGraphLobbyBypassScope*) invited;
+(MSGraphLobbyBypassScope*) organizationExcludingGuests;

+(MSGraphLobbyBypassScope*) UnknownEnumValue;

+(MSGraphLobbyBypassScope*) lobbyBypassScopeWithEnumValue:(MSGraphLobbyBypassScopeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLobbyBypassScopeValue enumValue;

@end


@interface NSString (MSGraphLobbyBypassScope)

- (MSGraphLobbyBypassScope*) toMSGraphLobbyBypassScope;

@end
