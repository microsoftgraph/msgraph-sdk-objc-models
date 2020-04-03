// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphScheduleChangeRequestActorValue){

	MSGraphScheduleChangeRequestActorSender = 0,
	MSGraphScheduleChangeRequestActorRecipient = 1,
	MSGraphScheduleChangeRequestActorManager = 2,
	MSGraphScheduleChangeRequestActorSystem = 3,
	MSGraphScheduleChangeRequestActorUnknownFutureValue = 4,
    MSGraphScheduleChangeRequestActorEndOfEnum
};

@interface MSGraphScheduleChangeRequestActor : NSObject

+(MSGraphScheduleChangeRequestActor*) sender;
+(MSGraphScheduleChangeRequestActor*) recipient;
+(MSGraphScheduleChangeRequestActor*) manager;
+(MSGraphScheduleChangeRequestActor*) system;
+(MSGraphScheduleChangeRequestActor*) unknownFutureValue;

+(MSGraphScheduleChangeRequestActor*) UnknownEnumValue;

+(MSGraphScheduleChangeRequestActor*) scheduleChangeRequestActorWithEnumValue:(MSGraphScheduleChangeRequestActorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphScheduleChangeRequestActorValue enumValue;

@end


@interface NSString (MSGraphScheduleChangeRequestActor)

- (MSGraphScheduleChangeRequestActor*) toMSGraphScheduleChangeRequestActor;

@end
