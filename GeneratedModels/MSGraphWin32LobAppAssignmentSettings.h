// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphMobileAppInstallTimeSettings, MSGraphWin32LobAppRestartSettings; 
#import "MSGraphWin32LobAppNotification.h"


#import "MSGraphMobileAppAssignmentSettings.h"

@interface MSGraphWin32LobAppAssignmentSettings : MSGraphMobileAppAssignmentSettings

@property (nullable, nonatomic, setter=setInstallTimeSettings:, getter=installTimeSettings) MSGraphMobileAppInstallTimeSettings* installTimeSettings;
@property (nonnull, nonatomic, setter=setNotifications:, getter=notifications) MSGraphWin32LobAppNotification* notifications;
@property (nullable, nonatomic, setter=setRestartSettings:, getter=restartSettings) MSGraphWin32LobAppRestartSettings* restartSettings;

@end
