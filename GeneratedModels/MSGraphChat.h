// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsAppInstallation, MSGraphConversationMember, MSGraphChatMessage, MSGraphTeamsTab; 
#import "MSGraphChatType.h"


#import "MSGraphEntity.h"

@interface MSGraphChat : MSGraphEntity

  @property (nonnull, nonatomic, setter=setChatType:, getter=chatType) MSGraphChatType* chatType;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setLastUpdatedDateTime:, getter=lastUpdatedDateTime) NSDate* lastUpdatedDateTime;
    @property (nullable, nonatomic, setter=setTopic:, getter=topic) NSString* topic;
    @property (nullable, nonatomic, setter=setInstalledApps:, getter=installedApps) NSArray* installedApps;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setMessages:, getter=messages) NSArray* messages;
    @property (nullable, nonatomic, setter=setTabs:, getter=tabs) NSArray* tabs;
  
@end
