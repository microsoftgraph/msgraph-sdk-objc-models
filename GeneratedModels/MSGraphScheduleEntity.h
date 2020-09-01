// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScheduleEntityTheme.h"


#import "MSObject.h"

@interface MSGraphScheduleEntity : MSObject

@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nonnull, nonatomic, setter=setTheme:, getter=theme) MSGraphScheduleEntityTheme* theme;

@end
