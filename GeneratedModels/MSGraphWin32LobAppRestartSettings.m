// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppRestartSettings()
{
    int32_t _countdownDisplayBeforeRestartInMinutes;
    int32_t _gracePeriodInMinutes;
    int32_t _restartNotificationSnoozeDurationInMinutes;
}
@end

@implementation MSGraphWin32LobAppRestartSettings

- (int32_t) countdownDisplayBeforeRestartInMinutes
{
    _countdownDisplayBeforeRestartInMinutes = [self.dictionary[@"countdownDisplayBeforeRestartInMinutes"] intValue];
    return _countdownDisplayBeforeRestartInMinutes;
}

- (void) setCountdownDisplayBeforeRestartInMinutes: (int32_t) val
{
    _countdownDisplayBeforeRestartInMinutes = val;
    self.dictionary[@"countdownDisplayBeforeRestartInMinutes"] = @(val);
}

- (int32_t) gracePeriodInMinutes
{
    _gracePeriodInMinutes = [self.dictionary[@"gracePeriodInMinutes"] intValue];
    return _gracePeriodInMinutes;
}

- (void) setGracePeriodInMinutes: (int32_t) val
{
    _gracePeriodInMinutes = val;
    self.dictionary[@"gracePeriodInMinutes"] = @(val);
}

- (int32_t) restartNotificationSnoozeDurationInMinutes
{
    _restartNotificationSnoozeDurationInMinutes = [self.dictionary[@"restartNotificationSnoozeDurationInMinutes"] intValue];
    return _restartNotificationSnoozeDurationInMinutes;
}

- (void) setRestartNotificationSnoozeDurationInMinutes: (int32_t) val
{
    _restartNotificationSnoozeDurationInMinutes = val;
    self.dictionary[@"restartNotificationSnoozeDurationInMinutes"] = @(val);
}

@end
