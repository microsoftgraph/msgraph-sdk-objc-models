// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMeetingChatModeValue){

	MSGraphMeetingChatModeEnabled = 0,
	MSGraphMeetingChatModeDisabled = 1,
	MSGraphMeetingChatModeLimited = 2,
	MSGraphMeetingChatModeUnknownFutureValue = 3,
    MSGraphMeetingChatModeEndOfEnum
};

@interface MSGraphMeetingChatMode : NSObject

+(MSGraphMeetingChatMode*) enabled;
+(MSGraphMeetingChatMode*) disabled;
+(MSGraphMeetingChatMode*) limited;
+(MSGraphMeetingChatMode*) unknownFutureValue;

+(MSGraphMeetingChatMode*) UnknownEnumValue;

+(MSGraphMeetingChatMode*) meetingChatModeWithEnumValue:(MSGraphMeetingChatModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMeetingChatModeValue enumValue;

@end


@interface NSString (MSGraphMeetingChatMode)

- (MSGraphMeetingChatMode*) toMSGraphMeetingChatMode;

@end
