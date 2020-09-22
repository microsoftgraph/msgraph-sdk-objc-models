// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRestartBehavior.h"
#import "MSGraphRunAsAccountType.h"


#import "MSObject.h"

@interface MSGraphWin32LobAppInstallExperience : MSObject

@property (nonnull, nonatomic, setter=setDeviceRestartBehavior:, getter=deviceRestartBehavior) MSGraphWin32LobAppRestartBehavior* deviceRestartBehavior;
@property (nonnull, nonatomic, setter=setRunAsAccount:, getter=runAsAccount) MSGraphRunAsAccountType* runAsAccount;

@end
