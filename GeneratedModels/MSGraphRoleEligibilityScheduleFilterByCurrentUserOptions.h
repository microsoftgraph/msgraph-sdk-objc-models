// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue){

	MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions : NSObject

+(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) principal;
+(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) roleEligibilityScheduleFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleEligibilityScheduleFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleFilterByCurrentUserOptions;

@end
