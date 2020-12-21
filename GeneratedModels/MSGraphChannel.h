// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDriveItem, MSGraphConversationMember, MSGraphChatMessage, MSGraphTeamsTab; 
#import "MSGraphChannelMembershipType.h"


#import "MSGraphEntity.h"

@interface MSGraphChannel : MSGraphEntity

  @property (nullable, nonatomic, setter=setChannelDescription:, getter=channelDescription) NSString* channelDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nonatomic, setter=setIsFavoriteByDefault:, getter=isFavoriteByDefault) BOOL isFavoriteByDefault;
    @property (nullable, nonatomic, setter=setMembershipType:, getter=membershipType) MSGraphChannelMembershipType* membershipType;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setFilesFolder:, getter=filesFolder) MSGraphDriveItem* filesFolder;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setMessages:, getter=messages) NSArray* messages;
    @property (nullable, nonatomic, setter=setTabs:, getter=tabs) NSArray* tabs;
  
@end
