// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWin32LobAppRestartSettings : MSObject

@property (nonatomic, setter=setCountdownDisplayBeforeRestartInMinutes:, getter=countdownDisplayBeforeRestartInMinutes) int32_t countdownDisplayBeforeRestartInMinutes;
@property (nonatomic, setter=setGracePeriodInMinutes:, getter=gracePeriodInMinutes) int32_t gracePeriodInMinutes;
@property (nonatomic, setter=setRestartNotificationSnoozeDurationInMinutes:, getter=restartNotificationSnoozeDurationInMinutes) int32_t restartNotificationSnoozeDurationInMinutes;

@end
