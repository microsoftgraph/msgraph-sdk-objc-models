// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue){

	MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsCreatedBy = 2,
	MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsApprover = 3,
	MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue = 4,
    MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions : NSObject

+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) principal;
+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) createdBy;
+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) approver;
+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) roleEligibilityScheduleRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions)

- (MSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions*) toMSGraphRoleEligibilityScheduleRequestFilterByCurrentUserOptions;

@end
