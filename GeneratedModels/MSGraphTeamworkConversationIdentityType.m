// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkConversationIdentityType.h"

@interface MSGraphTeamworkConversationIdentityType () {
    MSGraphTeamworkConversationIdentityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamworkConversationIdentityTypeValue enumValue;
@end

@implementation MSGraphTeamworkConversationIdentityType

+ (MSGraphTeamworkConversationIdentityType*) team {
    static MSGraphTeamworkConversationIdentityType *_team;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _team = [[MSGraphTeamworkConversationIdentityType alloc] init];
        _team.enumValue = MSGraphTeamworkConversationIdentityTypeTeam;
    });
    return _team;
}
+ (MSGraphTeamworkConversationIdentityType*) channel {
    static MSGraphTeamworkConversationIdentityType *_channel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _channel = [[MSGraphTeamworkConversationIdentityType alloc] init];
        _channel.enumValue = MSGraphTeamworkConversationIdentityTypeChannel;
    });
    return _channel;
}
+ (MSGraphTeamworkConversationIdentityType*) chat {
    static MSGraphTeamworkConversationIdentityType *_chat;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chat = [[MSGraphTeamworkConversationIdentityType alloc] init];
        _chat.enumValue = MSGraphTeamworkConversationIdentityTypeChat;
    });
    return _chat;
}
+ (MSGraphTeamworkConversationIdentityType*) unknownFutureValue {
    static MSGraphTeamworkConversationIdentityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamworkConversationIdentityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamworkConversationIdentityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamworkConversationIdentityType*) UnknownEnumValue {
    static MSGraphTeamworkConversationIdentityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamworkConversationIdentityType alloc] init];
        _unknownValue.enumValue = MSGraphTeamworkConversationIdentityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamworkConversationIdentityType*) teamworkConversationIdentityTypeWithEnumValue:(MSGraphTeamworkConversationIdentityTypeValue)val {

    switch(val)
    {
        case MSGraphTeamworkConversationIdentityTypeTeam:
            return [MSGraphTeamworkConversationIdentityType team];
        case MSGraphTeamworkConversationIdentityTypeChannel:
            return [MSGraphTeamworkConversationIdentityType channel];
        case MSGraphTeamworkConversationIdentityTypeChat:
            return [MSGraphTeamworkConversationIdentityType chat];
        case MSGraphTeamworkConversationIdentityTypeUnknownFutureValue:
            return [MSGraphTeamworkConversationIdentityType unknownFutureValue];
        case MSGraphTeamworkConversationIdentityTypeEndOfEnum:
        default:
            return [MSGraphTeamworkConversationIdentityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamworkConversationIdentityTypeTeam:
            return @"team";
        case MSGraphTeamworkConversationIdentityTypeChannel:
            return @"channel";
        case MSGraphTeamworkConversationIdentityTypeChat:
            return @"chat";
        case MSGraphTeamworkConversationIdentityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamworkConversationIdentityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamworkConversationIdentityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamworkConversationIdentityType)

- (MSGraphTeamworkConversationIdentityType*) toMSGraphTeamworkConversationIdentityType{

    if([self isEqualToString:@"team"])
    {
          return [MSGraphTeamworkConversationIdentityType team];
    }
    else if([self isEqualToString:@"channel"])
    {
          return [MSGraphTeamworkConversationIdentityType channel];
    }
    else if([self isEqualToString:@"chat"])
    {
          return [MSGraphTeamworkConversationIdentityType chat];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamworkConversationIdentityType unknownFutureValue];
    }
    else {
        return [MSGraphTeamworkConversationIdentityType UnknownEnumValue];
    }
}

@end
