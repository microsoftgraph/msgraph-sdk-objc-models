// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintJobProcessingState.h"

@interface MSGraphPrintJobProcessingState () {
    MSGraphPrintJobProcessingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintJobProcessingStateValue enumValue;
@end

@implementation MSGraphPrintJobProcessingState

+ (MSGraphPrintJobProcessingState*) unknown {
    static MSGraphPrintJobProcessingState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphPrintJobProcessingState alloc] init];
        _unknown.enumValue = MSGraphPrintJobProcessingStateUnknown;
    });
    return _unknown;
}
+ (MSGraphPrintJobProcessingState*) pending {
    static MSGraphPrintJobProcessingState *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphPrintJobProcessingState alloc] init];
        _pending.enumValue = MSGraphPrintJobProcessingStatePending;
    });
    return _pending;
}
+ (MSGraphPrintJobProcessingState*) processing {
    static MSGraphPrintJobProcessingState *_processing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _processing = [[MSGraphPrintJobProcessingState alloc] init];
        _processing.enumValue = MSGraphPrintJobProcessingStateProcessing;
    });
    return _processing;
}
+ (MSGraphPrintJobProcessingState*) paused {
    static MSGraphPrintJobProcessingState *_paused;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _paused = [[MSGraphPrintJobProcessingState alloc] init];
        _paused.enumValue = MSGraphPrintJobProcessingStatePaused;
    });
    return _paused;
}
+ (MSGraphPrintJobProcessingState*) stopped {
    static MSGraphPrintJobProcessingState *_stopped;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stopped = [[MSGraphPrintJobProcessingState alloc] init];
        _stopped.enumValue = MSGraphPrintJobProcessingStateStopped;
    });
    return _stopped;
}
+ (MSGraphPrintJobProcessingState*) completed {
    static MSGraphPrintJobProcessingState *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphPrintJobProcessingState alloc] init];
        _completed.enumValue = MSGraphPrintJobProcessingStateCompleted;
    });
    return _completed;
}
+ (MSGraphPrintJobProcessingState*) canceled {
    static MSGraphPrintJobProcessingState *_canceled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _canceled = [[MSGraphPrintJobProcessingState alloc] init];
        _canceled.enumValue = MSGraphPrintJobProcessingStateCanceled;
    });
    return _canceled;
}
+ (MSGraphPrintJobProcessingState*) aborted {
    static MSGraphPrintJobProcessingState *_aborted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aborted = [[MSGraphPrintJobProcessingState alloc] init];
        _aborted.enumValue = MSGraphPrintJobProcessingStateAborted;
    });
    return _aborted;
}
+ (MSGraphPrintJobProcessingState*) unknownFutureValue {
    static MSGraphPrintJobProcessingState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintJobProcessingState alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintJobProcessingStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintJobProcessingState*) UnknownEnumValue {
    static MSGraphPrintJobProcessingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintJobProcessingState alloc] init];
        _unknownValue.enumValue = MSGraphPrintJobProcessingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintJobProcessingState*) printJobProcessingStateWithEnumValue:(MSGraphPrintJobProcessingStateValue)val {

    switch(val)
    {
        case MSGraphPrintJobProcessingStateUnknown:
            return [MSGraphPrintJobProcessingState unknown];
        case MSGraphPrintJobProcessingStatePending:
            return [MSGraphPrintJobProcessingState pending];
        case MSGraphPrintJobProcessingStateProcessing:
            return [MSGraphPrintJobProcessingState processing];
        case MSGraphPrintJobProcessingStatePaused:
            return [MSGraphPrintJobProcessingState paused];
        case MSGraphPrintJobProcessingStateStopped:
            return [MSGraphPrintJobProcessingState stopped];
        case MSGraphPrintJobProcessingStateCompleted:
            return [MSGraphPrintJobProcessingState completed];
        case MSGraphPrintJobProcessingStateCanceled:
            return [MSGraphPrintJobProcessingState canceled];
        case MSGraphPrintJobProcessingStateAborted:
            return [MSGraphPrintJobProcessingState aborted];
        case MSGraphPrintJobProcessingStateUnknownFutureValue:
            return [MSGraphPrintJobProcessingState unknownFutureValue];
        case MSGraphPrintJobProcessingStateEndOfEnum:
        default:
            return [MSGraphPrintJobProcessingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintJobProcessingStateUnknown:
            return @"unknown";
        case MSGraphPrintJobProcessingStatePending:
            return @"pending";
        case MSGraphPrintJobProcessingStateProcessing:
            return @"processing";
        case MSGraphPrintJobProcessingStatePaused:
            return @"paused";
        case MSGraphPrintJobProcessingStateStopped:
            return @"stopped";
        case MSGraphPrintJobProcessingStateCompleted:
            return @"completed";
        case MSGraphPrintJobProcessingStateCanceled:
            return @"canceled";
        case MSGraphPrintJobProcessingStateAborted:
            return @"aborted";
        case MSGraphPrintJobProcessingStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintJobProcessingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintJobProcessingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintJobProcessingState)

- (MSGraphPrintJobProcessingState*) toMSGraphPrintJobProcessingState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphPrintJobProcessingState unknown];
    }
    else if([self isEqualToString:@"pending"])
    {
          return [MSGraphPrintJobProcessingState pending];
    }
    else if([self isEqualToString:@"processing"])
    {
          return [MSGraphPrintJobProcessingState processing];
    }
    else if([self isEqualToString:@"paused"])
    {
          return [MSGraphPrintJobProcessingState paused];
    }
    else if([self isEqualToString:@"stopped"])
    {
          return [MSGraphPrintJobProcessingState stopped];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphPrintJobProcessingState completed];
    }
    else if([self isEqualToString:@"canceled"])
    {
          return [MSGraphPrintJobProcessingState canceled];
    }
    else if([self isEqualToString:@"aborted"])
    {
          return [MSGraphPrintJobProcessingState aborted];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintJobProcessingState unknownFutureValue];
    }
    else {
        return [MSGraphPrintJobProcessingState UnknownEnumValue];
    }
}

@end
