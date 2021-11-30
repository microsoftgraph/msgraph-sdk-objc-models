// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatMessageType.h"

@interface MSGraphChatMessageType () {
    MSGraphChatMessageTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatMessageTypeValue enumValue;
@end

@implementation MSGraphChatMessageType

+ (MSGraphChatMessageType*) message {
    static MSGraphChatMessageType *_message;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _message = [[MSGraphChatMessageType alloc] init];
        _message.enumValue = MSGraphChatMessageTypeMessage;
    });
    return _message;
}
+ (MSGraphChatMessageType*) chatEvent {
    static MSGraphChatMessageType *_chatEvent;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chatEvent = [[MSGraphChatMessageType alloc] init];
        _chatEvent.enumValue = MSGraphChatMessageTypeChatEvent;
    });
    return _chatEvent;
}
+ (MSGraphChatMessageType*) typing {
    static MSGraphChatMessageType *_typing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _typing = [[MSGraphChatMessageType alloc] init];
        _typing.enumValue = MSGraphChatMessageTypeTyping;
    });
    return _typing;
}
+ (MSGraphChatMessageType*) unknownFutureValue {
    static MSGraphChatMessageType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphChatMessageType alloc] init];
        _unknownFutureValue.enumValue = MSGraphChatMessageTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphChatMessageType*) systemEventMessage {
    static MSGraphChatMessageType *_systemEventMessage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _systemEventMessage = [[MSGraphChatMessageType alloc] init];
        _systemEventMessage.enumValue = MSGraphChatMessageTypeSystemEventMessage;
    });
    return _systemEventMessage;
}

+ (MSGraphChatMessageType*) UnknownEnumValue {
    static MSGraphChatMessageType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatMessageType alloc] init];
        _unknownValue.enumValue = MSGraphChatMessageTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatMessageType*) chatMessageTypeWithEnumValue:(MSGraphChatMessageTypeValue)val {

    switch(val)
    {
        case MSGraphChatMessageTypeMessage:
            return [MSGraphChatMessageType message];
        case MSGraphChatMessageTypeChatEvent:
            return [MSGraphChatMessageType chatEvent];
        case MSGraphChatMessageTypeTyping:
            return [MSGraphChatMessageType typing];
        case MSGraphChatMessageTypeUnknownFutureValue:
            return [MSGraphChatMessageType unknownFutureValue];
        case MSGraphChatMessageTypeSystemEventMessage:
            return [MSGraphChatMessageType systemEventMessage];
        case MSGraphChatMessageTypeEndOfEnum:
        default:
            return [MSGraphChatMessageType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatMessageTypeMessage:
            return @"message";
        case MSGraphChatMessageTypeChatEvent:
            return @"chatEvent";
        case MSGraphChatMessageTypeTyping:
            return @"typing";
        case MSGraphChatMessageTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphChatMessageTypeSystemEventMessage:
            return @"systemEventMessage";
        case MSGraphChatMessageTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatMessageTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatMessageType)

- (MSGraphChatMessageType*) toMSGraphChatMessageType{

    if([self isEqualToString:@"message"])
    {
          return [MSGraphChatMessageType message];
    }
    else if([self isEqualToString:@"chatEvent"])
    {
          return [MSGraphChatMessageType chatEvent];
    }
    else if([self isEqualToString:@"typing"])
    {
          return [MSGraphChatMessageType typing];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphChatMessageType unknownFutureValue];
    }
    else if([self isEqualToString:@"systemEventMessage"])
    {
          return [MSGraphChatMessageType systemEventMessage];
    }
    else {
        return [MSGraphChatMessageType UnknownEnumValue];
    }
}

@end
