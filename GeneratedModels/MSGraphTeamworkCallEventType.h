// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamworkCallEventTypeValue){

	MSGraphTeamworkCallEventTypeCall = 0,
	MSGraphTeamworkCallEventTypeMeeting = 1,
	MSGraphTeamworkCallEventTypeScreenShare = 2,
	MSGraphTeamworkCallEventTypeUnknownFutureValue = 3,
    MSGraphTeamworkCallEventTypeEndOfEnum
};

@interface MSGraphTeamworkCallEventType : NSObject

+(MSGraphTeamworkCallEventType*) call;
+(MSGraphTeamworkCallEventType*) meeting;
+(MSGraphTeamworkCallEventType*) screenShare;
+(MSGraphTeamworkCallEventType*) unknownFutureValue;

+(MSGraphTeamworkCallEventType*) UnknownEnumValue;

+(MSGraphTeamworkCallEventType*) teamworkCallEventTypeWithEnumValue:(MSGraphTeamworkCallEventTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamworkCallEventTypeValue enumValue;

@end


@interface NSString (MSGraphTeamworkCallEventType)

- (MSGraphTeamworkCallEventType*) toMSGraphTeamworkCallEventType;

@end
