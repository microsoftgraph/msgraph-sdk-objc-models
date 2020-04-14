// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCalendarSharingActionTypeValue){

	MSGraphCalendarSharingActionTypeAccept = 0,
    MSGraphCalendarSharingActionTypeEndOfEnum
};

@interface MSGraphCalendarSharingActionType : NSObject

+(MSGraphCalendarSharingActionType*) accept;

+(MSGraphCalendarSharingActionType*) UnknownEnumValue;

+(MSGraphCalendarSharingActionType*) calendarSharingActionTypeWithEnumValue:(MSGraphCalendarSharingActionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCalendarSharingActionTypeValue enumValue;

@end


@interface NSString (MSGraphCalendarSharingActionType)

- (MSGraphCalendarSharingActionType*) toMSGraphCalendarSharingActionType;

@end
