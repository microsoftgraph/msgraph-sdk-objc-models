// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEnrollmentStateValue){

	MSGraphEnrollmentStateUnknown = 0,
	MSGraphEnrollmentStateEnrolled = 1,
	MSGraphEnrollmentStatePendingReset = 2,
	MSGraphEnrollmentStateFailed = 3,
	MSGraphEnrollmentStateNotContacted = 4,
    MSGraphEnrollmentStateEndOfEnum
};

@interface MSGraphEnrollmentState : NSObject

+(MSGraphEnrollmentState*) unknown;
+(MSGraphEnrollmentState*) enrolled;
+(MSGraphEnrollmentState*) pendingReset;
+(MSGraphEnrollmentState*) failed;
+(MSGraphEnrollmentState*) notContacted;

+(MSGraphEnrollmentState*) UnknownEnumValue;

+(MSGraphEnrollmentState*) enrollmentStateWithEnumValue:(MSGraphEnrollmentStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEnrollmentStateValue enumValue;

@end


@interface NSString (MSGraphEnrollmentState)

- (MSGraphEnrollmentState*) toMSGraphEnrollmentState;

@end
