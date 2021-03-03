// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrinterProcessingState.h"

@interface MSGraphPrinterProcessingState () {
    MSGraphPrinterProcessingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrinterProcessingStateValue enumValue;
@end

@implementation MSGraphPrinterProcessingState

+ (MSGraphPrinterProcessingState*) unknown {
    static MSGraphPrinterProcessingState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphPrinterProcessingState alloc] init];
        _unknown.enumValue = MSGraphPrinterProcessingStateUnknown;
    });
    return _unknown;
}
+ (MSGraphPrinterProcessingState*) idle {
    static MSGraphPrinterProcessingState *_idle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _idle = [[MSGraphPrinterProcessingState alloc] init];
        _idle.enumValue = MSGraphPrinterProcessingStateIdle;
    });
    return _idle;
}
+ (MSGraphPrinterProcessingState*) processing {
    static MSGraphPrinterProcessingState *_processing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _processing = [[MSGraphPrinterProcessingState alloc] init];
        _processing.enumValue = MSGraphPrinterProcessingStateProcessing;
    });
    return _processing;
}
+ (MSGraphPrinterProcessingState*) stopped {
    static MSGraphPrinterProcessingState *_stopped;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stopped = [[MSGraphPrinterProcessingState alloc] init];
        _stopped.enumValue = MSGraphPrinterProcessingStateStopped;
    });
    return _stopped;
}
+ (MSGraphPrinterProcessingState*) unknownFutureValue {
    static MSGraphPrinterProcessingState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrinterProcessingState alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrinterProcessingStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrinterProcessingState*) UnknownEnumValue {
    static MSGraphPrinterProcessingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrinterProcessingState alloc] init];
        _unknownValue.enumValue = MSGraphPrinterProcessingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrinterProcessingState*) printerProcessingStateWithEnumValue:(MSGraphPrinterProcessingStateValue)val {

    switch(val)
    {
        case MSGraphPrinterProcessingStateUnknown:
            return [MSGraphPrinterProcessingState unknown];
        case MSGraphPrinterProcessingStateIdle:
            return [MSGraphPrinterProcessingState idle];
        case MSGraphPrinterProcessingStateProcessing:
            return [MSGraphPrinterProcessingState processing];
        case MSGraphPrinterProcessingStateStopped:
            return [MSGraphPrinterProcessingState stopped];
        case MSGraphPrinterProcessingStateUnknownFutureValue:
            return [MSGraphPrinterProcessingState unknownFutureValue];
        case MSGraphPrinterProcessingStateEndOfEnum:
        default:
            return [MSGraphPrinterProcessingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrinterProcessingStateUnknown:
            return @"unknown";
        case MSGraphPrinterProcessingStateIdle:
            return @"idle";
        case MSGraphPrinterProcessingStateProcessing:
            return @"processing";
        case MSGraphPrinterProcessingStateStopped:
            return @"stopped";
        case MSGraphPrinterProcessingStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrinterProcessingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrinterProcessingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrinterProcessingState)

- (MSGraphPrinterProcessingState*) toMSGraphPrinterProcessingState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphPrinterProcessingState unknown];
    }
    else if([self isEqualToString:@"idle"])
    {
          return [MSGraphPrinterProcessingState idle];
    }
    else if([self isEqualToString:@"processing"])
    {
          return [MSGraphPrinterProcessingState processing];
    }
    else if([self isEqualToString:@"stopped"])
    {
          return [MSGraphPrinterProcessingState stopped];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrinterProcessingState unknownFutureValue];
    }
    else {
        return [MSGraphPrinterProcessingState UnknownEnumValue];
    }
}

@end
