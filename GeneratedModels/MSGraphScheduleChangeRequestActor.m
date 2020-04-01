// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphScheduleChangeRequestActor.h"

@interface MSGraphScheduleChangeRequestActor () {
    MSGraphScheduleChangeRequestActorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphScheduleChangeRequestActorValue enumValue;
@end

@implementation MSGraphScheduleChangeRequestActor

+ (MSGraphScheduleChangeRequestActor*) sender {
    static MSGraphScheduleChangeRequestActor *_sender;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sender = [[MSGraphScheduleChangeRequestActor alloc] init];
        _sender.enumValue = MSGraphScheduleChangeRequestActorSender;
    });
    return _sender;
}
+ (MSGraphScheduleChangeRequestActor*) recipient {
    static MSGraphScheduleChangeRequestActor *_recipient;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _recipient = [[MSGraphScheduleChangeRequestActor alloc] init];
        _recipient.enumValue = MSGraphScheduleChangeRequestActorRecipient;
    });
    return _recipient;
}
+ (MSGraphScheduleChangeRequestActor*) manager {
    static MSGraphScheduleChangeRequestActor *_manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[MSGraphScheduleChangeRequestActor alloc] init];
        _manager.enumValue = MSGraphScheduleChangeRequestActorManager;
    });
    return _manager;
}
+ (MSGraphScheduleChangeRequestActor*) system {
    static MSGraphScheduleChangeRequestActor *_system;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _system = [[MSGraphScheduleChangeRequestActor alloc] init];
        _system.enumValue = MSGraphScheduleChangeRequestActorSystem;
    });
    return _system;
}
+ (MSGraphScheduleChangeRequestActor*) unknownFutureValue {
    static MSGraphScheduleChangeRequestActor *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphScheduleChangeRequestActor alloc] init];
        _unknownFutureValue.enumValue = MSGraphScheduleChangeRequestActorUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphScheduleChangeRequestActor*) UnknownEnumValue {
    static MSGraphScheduleChangeRequestActor *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphScheduleChangeRequestActor alloc] init];
        _unknownValue.enumValue = MSGraphScheduleChangeRequestActorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphScheduleChangeRequestActor*) scheduleChangeRequestActorWithEnumValue:(MSGraphScheduleChangeRequestActorValue)val {

    switch(val)
    {
        case MSGraphScheduleChangeRequestActorSender:
            return [MSGraphScheduleChangeRequestActor sender];
        case MSGraphScheduleChangeRequestActorRecipient:
            return [MSGraphScheduleChangeRequestActor recipient];
        case MSGraphScheduleChangeRequestActorManager:
            return [MSGraphScheduleChangeRequestActor manager];
        case MSGraphScheduleChangeRequestActorSystem:
            return [MSGraphScheduleChangeRequestActor system];
        case MSGraphScheduleChangeRequestActorUnknownFutureValue:
            return [MSGraphScheduleChangeRequestActor unknownFutureValue];
        case MSGraphScheduleChangeRequestActorEndOfEnum:
        default:
            return [MSGraphScheduleChangeRequestActor UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphScheduleChangeRequestActorSender:
            return @"sender";
        case MSGraphScheduleChangeRequestActorRecipient:
            return @"recipient";
        case MSGraphScheduleChangeRequestActorManager:
            return @"manager";
        case MSGraphScheduleChangeRequestActorSystem:
            return @"system";
        case MSGraphScheduleChangeRequestActorUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphScheduleChangeRequestActorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphScheduleChangeRequestActorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphScheduleChangeRequestActor)

- (MSGraphScheduleChangeRequestActor*) toMSGraphScheduleChangeRequestActor{

    if([self isEqualToString:@"sender"])
    {
          return [MSGraphScheduleChangeRequestActor sender];
    }
    else if([self isEqualToString:@"recipient"])
    {
          return [MSGraphScheduleChangeRequestActor recipient];
    }
    else if([self isEqualToString:@"manager"])
    {
          return [MSGraphScheduleChangeRequestActor manager];
    }
    else if([self isEqualToString:@"system"])
    {
          return [MSGraphScheduleChangeRequestActor system];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphScheduleChangeRequestActor unknownFutureValue];
    }
    else {
        return [MSGraphScheduleChangeRequestActor UnknownEnumValue];
    }
}

@end
