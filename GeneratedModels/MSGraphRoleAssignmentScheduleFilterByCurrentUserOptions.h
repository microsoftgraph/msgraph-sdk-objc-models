// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue){

	MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsPrincipal = 1,
	MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions : NSObject

+(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) principal;
+(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) roleAssignmentScheduleFilterByCurrentUserOptionsWithEnumValue:(MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRoleAssignmentScheduleFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions)

- (MSGraphRoleAssignmentScheduleFilterByCurrentUserOptions*) toMSGraphRoleAssignmentScheduleFilterByCurrentUserOptions;

@end
