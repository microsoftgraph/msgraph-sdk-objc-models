// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCalendarSharingActionImportanceValue){

	MSGraphCalendarSharingActionImportancePrimary = 0,
	MSGraphCalendarSharingActionImportanceSecondary = 1,
    MSGraphCalendarSharingActionImportanceEndOfEnum
};

@interface MSGraphCalendarSharingActionImportance : NSObject

+(MSGraphCalendarSharingActionImportance*) primary;
+(MSGraphCalendarSharingActionImportance*) secondary;

+(MSGraphCalendarSharingActionImportance*) UnknownEnumValue;

+(MSGraphCalendarSharingActionImportance*) calendarSharingActionImportanceWithEnumValue:(MSGraphCalendarSharingActionImportanceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCalendarSharingActionImportanceValue enumValue;

@end


@interface NSString (MSGraphCalendarSharingActionImportance)

- (MSGraphCalendarSharingActionImportance*) toMSGraphCalendarSharingActionImportance;

@end
