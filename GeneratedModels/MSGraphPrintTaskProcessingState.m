// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintTaskProcessingState.h"

@interface MSGraphPrintTaskProcessingState () {
    MSGraphPrintTaskProcessingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintTaskProcessingStateValue enumValue;
@end

@implementation MSGraphPrintTaskProcessingState

+ (MSGraphPrintTaskProcessingState*) pending {
    static MSGraphPrintTaskProcessingState *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphPrintTaskProcessingState alloc] init];
        _pending.enumValue = MSGraphPrintTaskProcessingStatePending;
    });
    return _pending;
}
+ (MSGraphPrintTaskProcessingState*) processing {
    static MSGraphPrintTaskProcessingState *_processing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _processing = [[MSGraphPrintTaskProcessingState alloc] init];
        _processing.enumValue = MSGraphPrintTaskProcessingStateProcessing;
    });
    return _processing;
}
+ (MSGraphPrintTaskProcessingState*) completed {
    static MSGraphPrintTaskProcessingState *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphPrintTaskProcessingState alloc] init];
        _completed.enumValue = MSGraphPrintTaskProcessingStateCompleted;
    });
    return _completed;
}
+ (MSGraphPrintTaskProcessingState*) aborted {
    static MSGraphPrintTaskProcessingState *_aborted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aborted = [[MSGraphPrintTaskProcessingState alloc] init];
        _aborted.enumValue = MSGraphPrintTaskProcessingStateAborted;
    });
    return _aborted;
}
+ (MSGraphPrintTaskProcessingState*) unknownFutureValue {
    static MSGraphPrintTaskProcessingState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintTaskProcessingState alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintTaskProcessingStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintTaskProcessingState*) UnknownEnumValue {
    static MSGraphPrintTaskProcessingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintTaskProcessingState alloc] init];
        _unknownValue.enumValue = MSGraphPrintTaskProcessingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintTaskProcessingState*) printTaskProcessingStateWithEnumValue:(MSGraphPrintTaskProcessingStateValue)val {

    switch(val)
    {
        case MSGraphPrintTaskProcessingStatePending:
            return [MSGraphPrintTaskProcessingState pending];
        case MSGraphPrintTaskProcessingStateProcessing:
            return [MSGraphPrintTaskProcessingState processing];
        case MSGraphPrintTaskProcessingStateCompleted:
            return [MSGraphPrintTaskProcessingState completed];
        case MSGraphPrintTaskProcessingStateAborted:
            return [MSGraphPrintTaskProcessingState aborted];
        case MSGraphPrintTaskProcessingStateUnknownFutureValue:
            return [MSGraphPrintTaskProcessingState unknownFutureValue];
        case MSGraphPrintTaskProcessingStateEndOfEnum:
        default:
            return [MSGraphPrintTaskProcessingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintTaskProcessingStatePending:
            return @"pending";
        case MSGraphPrintTaskProcessingStateProcessing:
            return @"processing";
        case MSGraphPrintTaskProcessingStateCompleted:
            return @"completed";
        case MSGraphPrintTaskProcessingStateAborted:
            return @"aborted";
        case MSGraphPrintTaskProcessingStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintTaskProcessingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintTaskProcessingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintTaskProcessingState)

- (MSGraphPrintTaskProcessingState*) toMSGraphPrintTaskProcessingState{

    if([self isEqualToString:@"pending"])
    {
          return [MSGraphPrintTaskProcessingState pending];
    }
    else if([self isEqualToString:@"processing"])
    {
          return [MSGraphPrintTaskProcessingState processing];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphPrintTaskProcessingState completed];
    }
    else if([self isEqualToString:@"aborted"])
    {
          return [MSGraphPrintTaskProcessingState aborted];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintTaskProcessingState unknownFutureValue];
    }
    else {
        return [MSGraphPrintTaskProcessingState UnknownEnumValue];
    }
}

@end
