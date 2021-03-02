// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintOperationProcessingState.h"

@interface MSGraphPrintOperationProcessingState () {
    MSGraphPrintOperationProcessingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintOperationProcessingStateValue enumValue;
@end

@implementation MSGraphPrintOperationProcessingState

+ (MSGraphPrintOperationProcessingState*) notStarted {
    static MSGraphPrintOperationProcessingState *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphPrintOperationProcessingState alloc] init];
        _notStarted.enumValue = MSGraphPrintOperationProcessingStateNotStarted;
    });
    return _notStarted;
}
+ (MSGraphPrintOperationProcessingState*) running {
    static MSGraphPrintOperationProcessingState *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphPrintOperationProcessingState alloc] init];
        _running.enumValue = MSGraphPrintOperationProcessingStateRunning;
    });
    return _running;
}
+ (MSGraphPrintOperationProcessingState*) succeeded {
    static MSGraphPrintOperationProcessingState *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphPrintOperationProcessingState alloc] init];
        _succeeded.enumValue = MSGraphPrintOperationProcessingStateSucceeded;
    });
    return _succeeded;
}
+ (MSGraphPrintOperationProcessingState*) failed {
    static MSGraphPrintOperationProcessingState *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphPrintOperationProcessingState alloc] init];
        _failed.enumValue = MSGraphPrintOperationProcessingStateFailed;
    });
    return _failed;
}
+ (MSGraphPrintOperationProcessingState*) unknownFutureValue {
    static MSGraphPrintOperationProcessingState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintOperationProcessingState alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintOperationProcessingStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintOperationProcessingState*) UnknownEnumValue {
    static MSGraphPrintOperationProcessingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintOperationProcessingState alloc] init];
        _unknownValue.enumValue = MSGraphPrintOperationProcessingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintOperationProcessingState*) printOperationProcessingStateWithEnumValue:(MSGraphPrintOperationProcessingStateValue)val {

    switch(val)
    {
        case MSGraphPrintOperationProcessingStateNotStarted:
            return [MSGraphPrintOperationProcessingState notStarted];
        case MSGraphPrintOperationProcessingStateRunning:
            return [MSGraphPrintOperationProcessingState running];
        case MSGraphPrintOperationProcessingStateSucceeded:
            return [MSGraphPrintOperationProcessingState succeeded];
        case MSGraphPrintOperationProcessingStateFailed:
            return [MSGraphPrintOperationProcessingState failed];
        case MSGraphPrintOperationProcessingStateUnknownFutureValue:
            return [MSGraphPrintOperationProcessingState unknownFutureValue];
        case MSGraphPrintOperationProcessingStateEndOfEnum:
        default:
            return [MSGraphPrintOperationProcessingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintOperationProcessingStateNotStarted:
            return @"notStarted";
        case MSGraphPrintOperationProcessingStateRunning:
            return @"running";
        case MSGraphPrintOperationProcessingStateSucceeded:
            return @"succeeded";
        case MSGraphPrintOperationProcessingStateFailed:
            return @"failed";
        case MSGraphPrintOperationProcessingStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintOperationProcessingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintOperationProcessingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintOperationProcessingState)

- (MSGraphPrintOperationProcessingState*) toMSGraphPrintOperationProcessingState{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphPrintOperationProcessingState notStarted];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphPrintOperationProcessingState running];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphPrintOperationProcessingState succeeded];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphPrintOperationProcessingState failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintOperationProcessingState unknownFutureValue];
    }
    else {
        return [MSGraphPrintOperationProcessingState UnknownEnumValue];
    }
}

@end
