// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppInstallExperience()
{
    MSGraphWin32LobAppRestartBehavior* _deviceRestartBehavior;
    MSGraphRunAsAccountType* _runAsAccount;
}
@end

@implementation MSGraphWin32LobAppInstallExperience

- (MSGraphWin32LobAppRestartBehavior*) deviceRestartBehavior
{
    if(!_deviceRestartBehavior){
        _deviceRestartBehavior = [self.dictionary[@"deviceRestartBehavior"] toMSGraphWin32LobAppRestartBehavior];
    }
    return _deviceRestartBehavior;
}

- (void) setDeviceRestartBehavior: (MSGraphWin32LobAppRestartBehavior*) val
{
    _deviceRestartBehavior = val;
    self.dictionary[@"deviceRestartBehavior"] = val;
}

- (MSGraphRunAsAccountType*) runAsAccount
{
    if(!_runAsAccount){
        _runAsAccount = [self.dictionary[@"runAsAccount"] toMSGraphRunAsAccountType];
    }
    return _runAsAccount;
}

- (void) setRunAsAccount: (MSGraphRunAsAccountType*) val
{
    _runAsAccount = val;
    self.dictionary[@"runAsAccount"] = val;
}

@end
