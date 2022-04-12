// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue){

	MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsCreatedBy = 2,
	MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsApprover = 3,
	MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsUnknownFutureValue = 4,
    MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions : NSObject

+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) principal;
+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) createdBy;
+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) approver;
+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) roleAssignmentScheduleRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleRequestFilterByCurrentUserOptions;

@end
