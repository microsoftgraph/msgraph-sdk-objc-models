// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatTypeValue){

	MSGraphChatTypeOneOnOne = 0,
	MSGraphChatTypeGroup = 1,
	MSGraphChatTypeMeeting = 2,
	MSGraphChatTypeUnknownFutureValue = 3,
    MSGraphChatTypeEndOfEnum
};

@interface MSGraphChatType : NSObject

+(MSGraphChatType*) oneOnOne;
+(MSGraphChatType*) group;
+(MSGraphChatType*) meeting;
+(MSGraphChatType*) unknownFutureValue;

+(MSGraphChatType*) UnknownEnumValue;

+(MSGraphChatType*) chatTypeWithEnumValue:(MSGraphChatTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatTypeValue enumValue;

@end


@interface NSString (MSGraphChatType)

- (MSGraphChatType*) toMSGraphChatType;

@end
