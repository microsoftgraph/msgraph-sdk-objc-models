// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsTab; 


#import "MSGraphEntity.h"

@interface MSGraphChannel : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setChannelDescription:, getter=channelDescription) NSString* channelDescription;
    @property (nullable, nonatomic, setter=setTabs:, getter=tabs) NSArray* tabs;
  
@end
