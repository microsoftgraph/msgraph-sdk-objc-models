// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphStoragePlanInformation()
{
    BOOL _upgradeAvailable;
}
@end

@implementation MSGraphStoragePlanInformation

- (BOOL) upgradeAvailable
{
    _upgradeAvailable = [self.dictionary[@"upgradeAvailable"] boolValue];
    return _upgradeAvailable;
}

- (void) setUpgradeAvailable: (BOOL) val
{
    _upgradeAvailable = val;
    self.dictionary[@"upgradeAvailable"] = @(val);
}

@end
