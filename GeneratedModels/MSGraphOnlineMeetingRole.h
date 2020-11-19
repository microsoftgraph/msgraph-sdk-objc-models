// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnlineMeetingRoleValue){

	MSGraphOnlineMeetingRoleAttendee = 0,
	MSGraphOnlineMeetingRolePresenter = 1,
	MSGraphOnlineMeetingRoleUnknownFutureValue = 2,
    MSGraphOnlineMeetingRoleEndOfEnum
};

@interface MSGraphOnlineMeetingRole : NSObject

+(MSGraphOnlineMeetingRole*) attendee;
+(MSGraphOnlineMeetingRole*) presenter;
+(MSGraphOnlineMeetingRole*) unknownFutureValue;

+(MSGraphOnlineMeetingRole*) UnknownEnumValue;

+(MSGraphOnlineMeetingRole*) onlineMeetingRoleWithEnumValue:(MSGraphOnlineMeetingRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnlineMeetingRoleValue enumValue;

@end


@interface NSString (MSGraphOnlineMeetingRole)

- (MSGraphOnlineMeetingRole*) toMSGraphOnlineMeetingRole;

@end
