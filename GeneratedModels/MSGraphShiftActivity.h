// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScheduleEntityTheme.h"


#import "MSObject.h"

@interface MSGraphShiftActivity : MSObject

@property (nonatomic, setter=setIsPaid:, getter=isPaid) BOOL isPaid;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setCode:, getter=code) NSString* code;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setTheme:, getter=theme) MSGraphScheduleEntityTheme* theme;

@end
