// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBroadcastMeetingAudienceValue){

	MSGraphBroadcastMeetingAudienceRoleIsAttendee = 0,
	MSGraphBroadcastMeetingAudienceOrganization = 1,
	MSGraphBroadcastMeetingAudienceEveryone = 2,
	MSGraphBroadcastMeetingAudienceUnknownFutureValue = 3,
    MSGraphBroadcastMeetingAudienceEndOfEnum
};

@interface MSGraphBroadcastMeetingAudience : NSObject

+(MSGraphBroadcastMeetingAudience*) roleIsAttendee;
+(MSGraphBroadcastMeetingAudience*) organization;
+(MSGraphBroadcastMeetingAudience*) everyone;
+(MSGraphBroadcastMeetingAudience*) unknownFutureValue;

+(MSGraphBroadcastMeetingAudience*) UnknownEnumValue;

+(MSGraphBroadcastMeetingAudience*) broadcastMeetingAudienceWithEnumValue:(MSGraphBroadcastMeetingAudienceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBroadcastMeetingAudienceValue enumValue;

@end


@interface NSString (MSGraphBroadcastMeetingAudience)

- (MSGraphBroadcastMeetingAudience*) toMSGraphBroadcastMeetingAudience;

@end
