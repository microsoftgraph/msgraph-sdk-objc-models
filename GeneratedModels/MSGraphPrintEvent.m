// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintEvent.h"

@interface MSGraphPrintEvent () {
    MSGraphPrintEventValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintEventValue enumValue;
@end

@implementation MSGraphPrintEvent

+ (MSGraphPrintEvent*) jobStarted {
    static MSGraphPrintEvent *_jobStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _jobStarted = [[MSGraphPrintEvent alloc] init];
        _jobStarted.enumValue = MSGraphPrintEventJobStarted;
    });
    return _jobStarted;
}
+ (MSGraphPrintEvent*) unknownFutureValue {
    static MSGraphPrintEvent *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintEvent alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintEventUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintEvent*) UnknownEnumValue {
    static MSGraphPrintEvent *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintEvent alloc] init];
        _unknownValue.enumValue = MSGraphPrintEventEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintEvent*) printEventWithEnumValue:(MSGraphPrintEventValue)val {

    switch(val)
    {
        case MSGraphPrintEventJobStarted:
            return [MSGraphPrintEvent jobStarted];
        case MSGraphPrintEventUnknownFutureValue:
            return [MSGraphPrintEvent unknownFutureValue];
        case MSGraphPrintEventEndOfEnum:
        default:
            return [MSGraphPrintEvent UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintEventJobStarted:
            return @"jobStarted";
        case MSGraphPrintEventUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintEventEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintEventValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintEvent)

- (MSGraphPrintEvent*) toMSGraphPrintEvent{

    if([self isEqualToString:@"jobStarted"])
    {
          return [MSGraphPrintEvent jobStarted];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintEvent unknownFutureValue];
    }
    else {
        return [MSGraphPrintEvent UnknownEnumValue];
    }
}

@end
