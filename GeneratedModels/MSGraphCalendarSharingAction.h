// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCalendarSharingActionValue){

	MSGraphCalendarSharingActionAccept = 0,
	MSGraphCalendarSharingActionAcceptAndViewCalendar = 1,
	MSGraphCalendarSharingActionViewCalendar = 2,
	MSGraphCalendarSharingActionAddThisCalendar = 3,
    MSGraphCalendarSharingActionEndOfEnum
};

@interface MSGraphCalendarSharingAction : NSObject

+(MSGraphCalendarSharingAction*) accept;
+(MSGraphCalendarSharingAction*) acceptAndViewCalendar;
+(MSGraphCalendarSharingAction*) viewCalendar;
+(MSGraphCalendarSharingAction*) addThisCalendar;

+(MSGraphCalendarSharingAction*) UnknownEnumValue;

+(MSGraphCalendarSharingAction*) calendarSharingActionWithEnumValue:(MSGraphCalendarSharingActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCalendarSharingActionValue enumValue;

@end


@interface NSString (MSGraphCalendarSharingAction)

- (MSGraphCalendarSharingAction*) toMSGraphCalendarSharingAction;

@end
