// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkCallEventType.h"

@interface MSGraphTeamworkCallEventType () {
    MSGraphTeamworkCallEventTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamworkCallEventTypeValue enumValue;
@end

@implementation MSGraphTeamworkCallEventType

+ (MSGraphTeamworkCallEventType*) call {
    static MSGraphTeamworkCallEventType *_call;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _call = [[MSGraphTeamworkCallEventType alloc] init];
        _call.enumValue = MSGraphTeamworkCallEventTypeCall;
    });
    return _call;
}
+ (MSGraphTeamworkCallEventType*) meeting {
    static MSGraphTeamworkCallEventType *_meeting;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meeting = [[MSGraphTeamworkCallEventType alloc] init];
        _meeting.enumValue = MSGraphTeamworkCallEventTypeMeeting;
    });
    return _meeting;
}
+ (MSGraphTeamworkCallEventType*) screenShare {
    static MSGraphTeamworkCallEventType *_screenShare;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _screenShare = [[MSGraphTeamworkCallEventType alloc] init];
        _screenShare.enumValue = MSGraphTeamworkCallEventTypeScreenShare;
    });
    return _screenShare;
}
+ (MSGraphTeamworkCallEventType*) unknownFutureValue {
    static MSGraphTeamworkCallEventType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamworkCallEventType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamworkCallEventTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamworkCallEventType*) UnknownEnumValue {
    static MSGraphTeamworkCallEventType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamworkCallEventType alloc] init];
        _unknownValue.enumValue = MSGraphTeamworkCallEventTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamworkCallEventType*) teamworkCallEventTypeWithEnumValue:(MSGraphTeamworkCallEventTypeValue)val {

    switch(val)
    {
        case MSGraphTeamworkCallEventTypeCall:
            return [MSGraphTeamworkCallEventType call];
        case MSGraphTeamworkCallEventTypeMeeting:
            return [MSGraphTeamworkCallEventType meeting];
        case MSGraphTeamworkCallEventTypeScreenShare:
            return [MSGraphTeamworkCallEventType screenShare];
        case MSGraphTeamworkCallEventTypeUnknownFutureValue:
            return [MSGraphTeamworkCallEventType unknownFutureValue];
        case MSGraphTeamworkCallEventTypeEndOfEnum:
        default:
            return [MSGraphTeamworkCallEventType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamworkCallEventTypeCall:
            return @"call";
        case MSGraphTeamworkCallEventTypeMeeting:
            return @"meeting";
        case MSGraphTeamworkCallEventTypeScreenShare:
            return @"screenShare";
        case MSGraphTeamworkCallEventTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamworkCallEventTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamworkCallEventTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamworkCallEventType)

- (MSGraphTeamworkCallEventType*) toMSGraphTeamworkCallEventType{

    if([self isEqualToString:@"call"])
    {
          return [MSGraphTeamworkCallEventType call];
    }
    else if([self isEqualToString:@"meeting"])
    {
          return [MSGraphTeamworkCallEventType meeting];
    }
    else if([self isEqualToString:@"screenShare"])
    {
          return [MSGraphTeamworkCallEventType screenShare];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamworkCallEventType unknownFutureValue];
    }
    else {
        return [MSGraphTeamworkCallEventType UnknownEnumValue];
    }
}

@end
