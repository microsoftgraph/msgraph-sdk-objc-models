// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphMobileAppInstallTimeSettings : MSObject

@property (nullable, nonatomic, setter=setDeadlineDateTime:, getter=deadlineDateTime) NSDate* deadlineDateTime;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nonatomic, setter=setUseLocalTime:, getter=useLocalTime) BOOL useLocalTime;

@end
