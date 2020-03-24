// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphScheduleChangeStateValue){

	MSGraphScheduleChangeStatePending = 0,
	MSGraphScheduleChangeStateApproved = 1,
	MSGraphScheduleChangeStateDeclined = 2,
	MSGraphScheduleChangeStateUnknownFutureValue = 3,
    MSGraphScheduleChangeStateEndOfEnum
};

@interface MSGraphScheduleChangeState : NSObject

+(MSGraphScheduleChangeState*) pending;
+(MSGraphScheduleChangeState*) approved;
+(MSGraphScheduleChangeState*) declined;
+(MSGraphScheduleChangeState*) unknownFutureValue;

+(MSGraphScheduleChangeState*) UnknownEnumValue;

+(MSGraphScheduleChangeState*) scheduleChangeStateWithEnumValue:(MSGraphScheduleChangeStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphScheduleChangeStateValue enumValue;

@end


@interface NSString (MSGraphScheduleChangeState)

- (MSGraphScheduleChangeState*) toMSGraphScheduleChangeState;

@end
