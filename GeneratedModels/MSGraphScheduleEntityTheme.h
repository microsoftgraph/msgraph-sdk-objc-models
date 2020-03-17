// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphScheduleEntityThemeValue){

	MSGraphScheduleEntityThemeWhite = 0,
	MSGraphScheduleEntityThemeBlue = 1,
	MSGraphScheduleEntityThemeGreen = 2,
	MSGraphScheduleEntityThemePurple = 3,
	MSGraphScheduleEntityThemePink = 4,
	MSGraphScheduleEntityThemeYellow = 5,
	MSGraphScheduleEntityThemeGray = 6,
	MSGraphScheduleEntityThemeDarkBlue = 7,
	MSGraphScheduleEntityThemeDarkGreen = 8,
	MSGraphScheduleEntityThemeDarkPurple = 9,
	MSGraphScheduleEntityThemeDarkPink = 10,
	MSGraphScheduleEntityThemeDarkYellow = 11,
	MSGraphScheduleEntityThemeUnknownFutureValue = 12,
    MSGraphScheduleEntityThemeEndOfEnum
};

@interface MSGraphScheduleEntityTheme : NSObject

+(MSGraphScheduleEntityTheme*) white;
+(MSGraphScheduleEntityTheme*) blue;
+(MSGraphScheduleEntityTheme*) green;
+(MSGraphScheduleEntityTheme*) purple;
+(MSGraphScheduleEntityTheme*) pink;
+(MSGraphScheduleEntityTheme*) yellow;
+(MSGraphScheduleEntityTheme*) gray;
+(MSGraphScheduleEntityTheme*) darkBlue;
+(MSGraphScheduleEntityTheme*) darkGreen;
+(MSGraphScheduleEntityTheme*) darkPurple;
+(MSGraphScheduleEntityTheme*) darkPink;
+(MSGraphScheduleEntityTheme*) darkYellow;
+(MSGraphScheduleEntityTheme*) unknownFutureValue;

+(MSGraphScheduleEntityTheme*) UnknownEnumValue;

+(MSGraphScheduleEntityTheme*) scheduleEntityThemeWithEnumValue:(MSGraphScheduleEntityThemeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphScheduleEntityThemeValue enumValue;

@end


@interface NSString (MSGraphScheduleEntityTheme)

- (MSGraphScheduleEntityTheme*) toMSGraphScheduleEntityTheme;

@end
