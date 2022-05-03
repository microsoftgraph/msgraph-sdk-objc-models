// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLongRunningOperationStatus.h"

@interface MSGraphLongRunningOperationStatus () {
    MSGraphLongRunningOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphLongRunningOperationStatusValue enumValue;
@end

@implementation MSGraphLongRunningOperationStatus

+ (MSGraphLongRunningOperationStatus*) notStarted {
    static MSGraphLongRunningOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphLongRunningOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphLongRunningOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphLongRunningOperationStatus*) running {
    static MSGraphLongRunningOperationStatus *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphLongRunningOperationStatus alloc] init];
        _running.enumValue = MSGraphLongRunningOperationStatusRunning;
    });
    return _running;
}
+ (MSGraphLongRunningOperationStatus*) succeeded {
    static MSGraphLongRunningOperationStatus *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphLongRunningOperationStatus alloc] init];
        _succeeded.enumValue = MSGraphLongRunningOperationStatusSucceeded;
    });
    return _succeeded;
}
+ (MSGraphLongRunningOperationStatus*) failed {
    static MSGraphLongRunningOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphLongRunningOperationStatus alloc] init];
        _failed.enumValue = MSGraphLongRunningOperationStatusFailed;
    });
    return _failed;
}
+ (MSGraphLongRunningOperationStatus*) unknownFutureValue {
    static MSGraphLongRunningOperationStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphLongRunningOperationStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphLongRunningOperationStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphLongRunningOperationStatus*) UnknownEnumValue {
    static MSGraphLongRunningOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphLongRunningOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphLongRunningOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphLongRunningOperationStatus*) longRunningOperationStatusWithEnumValue:(MSGraphLongRunningOperationStatusValue)val {

    switch(val)
    {
        case MSGraphLongRunningOperationStatusNotStarted:
            return [MSGraphLongRunningOperationStatus notStarted];
        case MSGraphLongRunningOperationStatusRunning:
            return [MSGraphLongRunningOperationStatus running];
        case MSGraphLongRunningOperationStatusSucceeded:
            return [MSGraphLongRunningOperationStatus succeeded];
        case MSGraphLongRunningOperationStatusFailed:
            return [MSGraphLongRunningOperationStatus failed];
        case MSGraphLongRunningOperationStatusUnknownFutureValue:
            return [MSGraphLongRunningOperationStatus unknownFutureValue];
        case MSGraphLongRunningOperationStatusEndOfEnum:
        default:
            return [MSGraphLongRunningOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphLongRunningOperationStatusNotStarted:
            return @"notStarted";
        case MSGraphLongRunningOperationStatusRunning:
            return @"running";
        case MSGraphLongRunningOperationStatusSucceeded:
            return @"succeeded";
        case MSGraphLongRunningOperationStatusFailed:
            return @"failed";
        case MSGraphLongRunningOperationStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphLongRunningOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphLongRunningOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphLongRunningOperationStatus)

- (MSGraphLongRunningOperationStatus*) toMSGraphLongRunningOperationStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphLongRunningOperationStatus notStarted];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphLongRunningOperationStatus running];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphLongRunningOperationStatus succeeded];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphLongRunningOperationStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphLongRunningOperationStatus unknownFutureValue];
    }
    else {
        return [MSGraphLongRunningOperationStatus UnknownEnumValue];
    }
}

@end
