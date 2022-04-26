// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphUnifiedRoleScheduleRequestActionsValue){

	MSGraphUnifiedRoleScheduleRequestActionsAdminAssign = 1,
	MSGraphUnifiedRoleScheduleRequestActionsAdminUpdate = 2,
	MSGraphUnifiedRoleScheduleRequestActionsAdminRemove = 3,
	MSGraphUnifiedRoleScheduleRequestActionsSelfActivate = 4,
	MSGraphUnifiedRoleScheduleRequestActionsSelfDeactivate = 5,
	MSGraphUnifiedRoleScheduleRequestActionsAdminExtend = 6,
	MSGraphUnifiedRoleScheduleRequestActionsAdminRenew = 7,
	MSGraphUnifiedRoleScheduleRequestActionsSelfExtend = 8,
	MSGraphUnifiedRoleScheduleRequestActionsSelfRenew = 9,
	MSGraphUnifiedRoleScheduleRequestActionsUnknownFutureValue = 10,
    MSGraphUnifiedRoleScheduleRequestActionsEndOfEnum
};

@interface MSGraphUnifiedRoleScheduleRequestActions : NSObject

+(MSGraphUnifiedRoleScheduleRequestActions*) adminAssign;
+(MSGraphUnifiedRoleScheduleRequestActions*) adminUpdate;
+(MSGraphUnifiedRoleScheduleRequestActions*) adminRemove;
+(MSGraphUnifiedRoleScheduleRequestActions*) selfActivate;
+(MSGraphUnifiedRoleScheduleRequestActions*) selfDeactivate;
+(MSGraphUnifiedRoleScheduleRequestActions*) adminExtend;
+(MSGraphUnifiedRoleScheduleRequestActions*) adminRenew;
+(MSGraphUnifiedRoleScheduleRequestActions*) selfExtend;
+(MSGraphUnifiedRoleScheduleRequestActions*) selfRenew;
+(MSGraphUnifiedRoleScheduleRequestActions*) unknownFutureValue;

+(MSGraphUnifiedRoleScheduleRequestActions*) UnknownEnumValue;

+(MSGraphUnifiedRoleScheduleRequestActions*) unifiedRoleScheduleRequestActionsWithEnumValue:(MSGraphUnifiedRoleScheduleRequestActionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphUnifiedRoleScheduleRequestActionsValue enumValue;

@end


@interface NSString (MSGraphUnifiedRoleScheduleRequestActions)

- (MSGraphUnifiedRoleScheduleRequestActions*) toMSGraphUnifiedRoleScheduleRequestActions;

@end
