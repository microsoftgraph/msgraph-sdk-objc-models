// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue){

	MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions : NSObject

+(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) principal;
+(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) roleEligibilityScheduleInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleInstanceFilterByCurrentUserOptions;

@end
