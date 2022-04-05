// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMeetingChatMode.h"

@interface MSGraphMeetingChatMode () {
    MSGraphMeetingChatModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMeetingChatModeValue enumValue;
@end

@implementation MSGraphMeetingChatMode

+ (MSGraphMeetingChatMode*) enabled {
    static MSGraphMeetingChatMode *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphMeetingChatMode alloc] init];
        _enabled.enumValue = MSGraphMeetingChatModeEnabled;
    });
    return _enabled;
}
+ (MSGraphMeetingChatMode*) disabled {
    static MSGraphMeetingChatMode *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphMeetingChatMode alloc] init];
        _disabled.enumValue = MSGraphMeetingChatModeDisabled;
    });
    return _disabled;
}
+ (MSGraphMeetingChatMode*) limited {
    static MSGraphMeetingChatMode *_limited;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _limited = [[MSGraphMeetingChatMode alloc] init];
        _limited.enumValue = MSGraphMeetingChatModeLimited;
    });
    return _limited;
}
+ (MSGraphMeetingChatMode*) unknownFutureValue {
    static MSGraphMeetingChatMode *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphMeetingChatMode alloc] init];
        _unknownFutureValue.enumValue = MSGraphMeetingChatModeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphMeetingChatMode*) UnknownEnumValue {
    static MSGraphMeetingChatMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMeetingChatMode alloc] init];
        _unknownValue.enumValue = MSGraphMeetingChatModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMeetingChatMode*) meetingChatModeWithEnumValue:(MSGraphMeetingChatModeValue)val {

    switch(val)
    {
        case MSGraphMeetingChatModeEnabled:
            return [MSGraphMeetingChatMode enabled];
        case MSGraphMeetingChatModeDisabled:
            return [MSGraphMeetingChatMode disabled];
        case MSGraphMeetingChatModeLimited:
            return [MSGraphMeetingChatMode limited];
        case MSGraphMeetingChatModeUnknownFutureValue:
            return [MSGraphMeetingChatMode unknownFutureValue];
        case MSGraphMeetingChatModeEndOfEnum:
        default:
            return [MSGraphMeetingChatMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMeetingChatModeEnabled:
            return @"enabled";
        case MSGraphMeetingChatModeDisabled:
            return @"disabled";
        case MSGraphMeetingChatModeLimited:
            return @"limited";
        case MSGraphMeetingChatModeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphMeetingChatModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMeetingChatModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMeetingChatMode)

- (MSGraphMeetingChatMode*) toMSGraphMeetingChatMode{

    if([self isEqualToString:@"enabled"])
    {
          return [MSGraphMeetingChatMode enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphMeetingChatMode disabled];
    }
    else if([self isEqualToString:@"limited"])
    {
          return [MSGraphMeetingChatMode limited];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphMeetingChatMode unknownFutureValue];
    }
    else {
        return [MSGraphMeetingChatMode UnknownEnumValue];
    }
}

@end
