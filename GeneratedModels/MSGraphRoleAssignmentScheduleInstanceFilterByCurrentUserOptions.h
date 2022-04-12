// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue){

	MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions : NSObject

+(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) principal;
+(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) roleAssignmentScheduleInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleInstanceFilterByCurrentUserOptions;

@end
