// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserScopeTeamsAppInstallation; 


#import "MSGraphEntity.h"

@interface MSGraphUserTeamwork : MSGraphEntity

  @property (nullable, nonatomic, setter=setInstalledApps:, getter=installedApps) NSArray* installedApps;
  
@end
