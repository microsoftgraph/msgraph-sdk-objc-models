// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppAssignmentSettings()
{
    MSGraphWin32LobAppDeliveryOptimizationPriority* _deliveryOptimizationPriority;
    MSGraphMobileAppInstallTimeSettings* _installTimeSettings;
    MSGraphWin32LobAppNotification* _notifications;
    MSGraphWin32LobAppRestartSettings* _restartSettings;
}
@end

@implementation MSGraphWin32LobAppAssignmentSettings

- (MSGraphWin32LobAppDeliveryOptimizationPriority*) deliveryOptimizationPriority
{
    if(!_deliveryOptimizationPriority){
        _deliveryOptimizationPriority = [self.dictionary[@"deliveryOptimizationPriority"] toMSGraphWin32LobAppDeliveryOptimizationPriority];
    }
    return _deliveryOptimizationPriority;
}

- (void) setDeliveryOptimizationPriority: (MSGraphWin32LobAppDeliveryOptimizationPriority*) val
{
    _deliveryOptimizationPriority = val;
    self.dictionary[@"deliveryOptimizationPriority"] = val;
}

- (MSGraphMobileAppInstallTimeSettings*) installTimeSettings
{
    if(!_installTimeSettings){
        _installTimeSettings = [[MSGraphMobileAppInstallTimeSettings alloc] initWithDictionary: self.dictionary[@"installTimeSettings"]];
    }
    return _installTimeSettings;
}

- (void) setInstallTimeSettings: (MSGraphMobileAppInstallTimeSettings*) val
{
    _installTimeSettings = val;
    self.dictionary[@"installTimeSettings"] = val;
}

- (MSGraphWin32LobAppNotification*) notifications
{
    if(!_notifications){
        _notifications = [self.dictionary[@"notifications"] toMSGraphWin32LobAppNotification];
    }
    return _notifications;
}

- (void) setNotifications: (MSGraphWin32LobAppNotification*) val
{
    _notifications = val;
    self.dictionary[@"notifications"] = val;
}

- (MSGraphWin32LobAppRestartSettings*) restartSettings
{
    if(!_restartSettings){
        _restartSettings = [[MSGraphWin32LobAppRestartSettings alloc] initWithDictionary: self.dictionary[@"restartSettings"]];
    }
    return _restartSettings;
}

- (void) setRestartSettings: (MSGraphWin32LobAppRestartSettings*) val
{
    _restartSettings = val;
    self.dictionary[@"restartSettings"] = val;
}

@end
