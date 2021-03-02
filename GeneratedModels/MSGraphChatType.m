// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatType.h"

@interface MSGraphChatType () {
    MSGraphChatTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatTypeValue enumValue;
@end

@implementation MSGraphChatType

+ (MSGraphChatType*) oneOnOne {
    static MSGraphChatType *_oneOnOne;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneOnOne = [[MSGraphChatType alloc] init];
        _oneOnOne.enumValue = MSGraphChatTypeOneOnOne;
    });
    return _oneOnOne;
}
+ (MSGraphChatType*) group {
    static MSGraphChatType *_group;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _group = [[MSGraphChatType alloc] init];
        _group.enumValue = MSGraphChatTypeGroup;
    });
    return _group;
}
+ (MSGraphChatType*) meeting {
    static MSGraphChatType *_meeting;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _meeting = [[MSGraphChatType alloc] init];
        _meeting.enumValue = MSGraphChatTypeMeeting;
    });
    return _meeting;
}
+ (MSGraphChatType*) unknownFutureValue {
    static MSGraphChatType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphChatType alloc] init];
        _unknownFutureValue.enumValue = MSGraphChatTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphChatType*) UnknownEnumValue {
    static MSGraphChatType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatType alloc] init];
        _unknownValue.enumValue = MSGraphChatTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatType*) chatTypeWithEnumValue:(MSGraphChatTypeValue)val {

    switch(val)
    {
        case MSGraphChatTypeOneOnOne:
            return [MSGraphChatType oneOnOne];
        case MSGraphChatTypeGroup:
            return [MSGraphChatType group];
        case MSGraphChatTypeMeeting:
            return [MSGraphChatType meeting];
        case MSGraphChatTypeUnknownFutureValue:
            return [MSGraphChatType unknownFutureValue];
        case MSGraphChatTypeEndOfEnum:
        default:
            return [MSGraphChatType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatTypeOneOnOne:
            return @"oneOnOne";
        case MSGraphChatTypeGroup:
            return @"group";
        case MSGraphChatTypeMeeting:
            return @"meeting";
        case MSGraphChatTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphChatTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatType)

- (MSGraphChatType*) toMSGraphChatType{

    if([self isEqualToString:@"oneOnOne"])
    {
          return [MSGraphChatType oneOnOne];
    }
    else if([self isEqualToString:@"group"])
    {
          return [MSGraphChatType group];
    }
    else if([self isEqualToString:@"meeting"])
    {
          return [MSGraphChatType meeting];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphChatType unknownFutureValue];
    }
    else {
        return [MSGraphChatType UnknownEnumValue];
    }
}

@end
