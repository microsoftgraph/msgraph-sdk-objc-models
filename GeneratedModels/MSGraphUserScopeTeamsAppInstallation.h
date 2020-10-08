// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphChat; 


#import "MSGraphTeamsAppInstallation.h"

@interface MSGraphUserScopeTeamsAppInstallation : MSGraphTeamsAppInstallation

  @property (nullable, nonatomic, setter=setChat:, getter=chat) MSGraphChat* chat;
  
@end
