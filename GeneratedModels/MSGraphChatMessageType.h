// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphChatMessageTypeValue){

	MSGraphChatMessageTypeMessage = 0,
	MSGraphChatMessageTypeChatEvent = 1,
	MSGraphChatMessageTypeTyping = 2,
	MSGraphChatMessageTypeUnknownFutureValue = 3,
    MSGraphChatMessageTypeEndOfEnum
};

@interface MSGraphChatMessageType : NSObject

+(MSGraphChatMessageType*) message;
+(MSGraphChatMessageType*) chatEvent;
+(MSGraphChatMessageType*) typing;
+(MSGraphChatMessageType*) unknownFutureValue;

+(MSGraphChatMessageType*) UnknownEnumValue;

+(MSGraphChatMessageType*) chatMessageTypeWithEnumValue:(MSGraphChatMessageTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphChatMessageTypeValue enumValue;

@end


@interface NSString (MSGraphChatMessageType)

- (MSGraphChatMessageType*) toMSGraphChatMessageType;

@end
