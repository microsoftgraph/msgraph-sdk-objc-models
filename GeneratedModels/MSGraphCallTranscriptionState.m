// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallTranscriptionState.h"

@interface MSGraphCallTranscriptionState () {
    MSGraphCallTranscriptionStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallTranscriptionStateValue enumValue;
@end

@implementation MSGraphCallTranscriptionState

+ (MSGraphCallTranscriptionState*) notStarted {
    static MSGraphCallTranscriptionState *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphCallTranscriptionState alloc] init];
        _notStarted.enumValue = MSGraphCallTranscriptionStateNotStarted;
    });
    return _notStarted;
}
+ (MSGraphCallTranscriptionState*) active {
    static MSGraphCallTranscriptionState *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphCallTranscriptionState alloc] init];
        _active.enumValue = MSGraphCallTranscriptionStateActive;
    });
    return _active;
}
+ (MSGraphCallTranscriptionState*) inactive {
    static MSGraphCallTranscriptionState *_inactive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inactive = [[MSGraphCallTranscriptionState alloc] init];
        _inactive.enumValue = MSGraphCallTranscriptionStateInactive;
    });
    return _inactive;
}
+ (MSGraphCallTranscriptionState*) unknownFutureValue {
    static MSGraphCallTranscriptionState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallTranscriptionState alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallTranscriptionStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallTranscriptionState*) UnknownEnumValue {
    static MSGraphCallTranscriptionState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallTranscriptionState alloc] init];
        _unknownValue.enumValue = MSGraphCallTranscriptionStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallTranscriptionState*) callTranscriptionStateWithEnumValue:(MSGraphCallTranscriptionStateValue)val {

    switch(val)
    {
        case MSGraphCallTranscriptionStateNotStarted:
            return [MSGraphCallTranscriptionState notStarted];
        case MSGraphCallTranscriptionStateActive:
            return [MSGraphCallTranscriptionState active];
        case MSGraphCallTranscriptionStateInactive:
            return [MSGraphCallTranscriptionState inactive];
        case MSGraphCallTranscriptionStateUnknownFutureValue:
            return [MSGraphCallTranscriptionState unknownFutureValue];
        case MSGraphCallTranscriptionStateEndOfEnum:
        default:
            return [MSGraphCallTranscriptionState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallTranscriptionStateNotStarted:
            return @"notStarted";
        case MSGraphCallTranscriptionStateActive:
            return @"active";
        case MSGraphCallTranscriptionStateInactive:
            return @"inactive";
        case MSGraphCallTranscriptionStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallTranscriptionStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallTranscriptionStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallTranscriptionState)

- (MSGraphCallTranscriptionState*) toMSGraphCallTranscriptionState{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphCallTranscriptionState notStarted];
    }
    else if([self isEqualToString:@"active"])
    {
          return [MSGraphCallTranscriptionState active];
    }
    else if([self isEqualToString:@"inactive"])
    {
          return [MSGraphCallTranscriptionState inactive];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallTranscriptionState unknownFutureValue];
    }
    else {
        return [MSGraphCallTranscriptionState UnknownEnumValue];
    }
}

@end
