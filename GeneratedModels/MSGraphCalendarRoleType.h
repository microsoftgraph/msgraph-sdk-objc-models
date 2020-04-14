// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCalendarRoleTypeValue){

	MSGraphCalendarRoleTypeNone = 0,
	MSGraphCalendarRoleTypeFreeBusyRead = 1,
	MSGraphCalendarRoleTypeLimitedRead = 2,
	MSGraphCalendarRoleTypeRead = 3,
	MSGraphCalendarRoleTypeWrite = 4,
	MSGraphCalendarRoleTypeDelegateWithoutPrivateEventAccess = 5,
	MSGraphCalendarRoleTypeDelegateWithPrivateEventAccess = 6,
	MSGraphCalendarRoleTypeCustom = 7,
    MSGraphCalendarRoleTypeEndOfEnum
};

@interface MSGraphCalendarRoleType : NSObject

+(MSGraphCalendarRoleType*) none;
+(MSGraphCalendarRoleType*) freeBusyRead;
+(MSGraphCalendarRoleType*) limitedRead;
+(MSGraphCalendarRoleType*) read;
+(MSGraphCalendarRoleType*) write;
+(MSGraphCalendarRoleType*) delegateWithoutPrivateEventAccess;
+(MSGraphCalendarRoleType*) delegateWithPrivateEventAccess;
+(MSGraphCalendarRoleType*) custom;

+(MSGraphCalendarRoleType*) UnknownEnumValue;

+(MSGraphCalendarRoleType*) calendarRoleTypeWithEnumValue:(MSGraphCalendarRoleTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCalendarRoleTypeValue enumValue;

@end


@interface NSString (MSGraphCalendarRoleType)

- (MSGraphCalendarRoleType*) toMSGraphCalendarRoleType;

@end
