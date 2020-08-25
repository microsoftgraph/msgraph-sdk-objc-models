// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphChatMessage, MSGraphTeamsTab, MSGraphDriveItem; 


#import "MSGraphEntity.h"

@interface MSGraphChannel : MSGraphEntity

  @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setChannelDescription:, getter=channelDescription) NSString* channelDescription;
    @property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setMessages:, getter=messages) NSArray* messages;
    @property (nullable, nonatomic, setter=setTabs:, getter=tabs) NSArray* tabs;
    @property (nullable, nonatomic, setter=setFilesFolder:, getter=filesFolder) MSGraphDriveItem* filesFolder;
  
@end
