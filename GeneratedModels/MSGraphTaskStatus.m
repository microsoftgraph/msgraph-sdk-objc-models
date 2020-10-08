// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTaskStatus.h"

@interface MSGraphTaskStatus () {
    MSGraphTaskStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTaskStatusValue enumValue;
@end

@implementation MSGraphTaskStatus

+ (MSGraphTaskStatus*) notStarted {
    static MSGraphTaskStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphTaskStatus alloc] init];
        _notStarted.enumValue = MSGraphTaskStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphTaskStatus*) inProgress {
    static MSGraphTaskStatus *_inProgress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inProgress = [[MSGraphTaskStatus alloc] init];
        _inProgress.enumValue = MSGraphTaskStatusInProgress;
    });
    return _inProgress;
}
+ (MSGraphTaskStatus*) completed {
    static MSGraphTaskStatus *_completed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _completed = [[MSGraphTaskStatus alloc] init];
        _completed.enumValue = MSGraphTaskStatusCompleted;
    });
    return _completed;
}
+ (MSGraphTaskStatus*) waitingOnOthers {
    static MSGraphTaskStatus *_waitingOnOthers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _waitingOnOthers = [[MSGraphTaskStatus alloc] init];
        _waitingOnOthers.enumValue = MSGraphTaskStatusWaitingOnOthers;
    });
    return _waitingOnOthers;
}
+ (MSGraphTaskStatus*) deferred {
    static MSGraphTaskStatus *_deferred;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deferred = [[MSGraphTaskStatus alloc] init];
        _deferred.enumValue = MSGraphTaskStatusDeferred;
    });
    return _deferred;
}

+ (MSGraphTaskStatus*) UnknownEnumValue {
    static MSGraphTaskStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTaskStatus alloc] init];
        _unknownValue.enumValue = MSGraphTaskStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTaskStatus*) taskStatusWithEnumValue:(MSGraphTaskStatusValue)val {

    switch(val)
    {
        case MSGraphTaskStatusNotStarted:
            return [MSGraphTaskStatus notStarted];
        case MSGraphTaskStatusInProgress:
            return [MSGraphTaskStatus inProgress];
        case MSGraphTaskStatusCompleted:
            return [MSGraphTaskStatus completed];
        case MSGraphTaskStatusWaitingOnOthers:
            return [MSGraphTaskStatus waitingOnOthers];
        case MSGraphTaskStatusDeferred:
            return [MSGraphTaskStatus deferred];
        case MSGraphTaskStatusEndOfEnum:
        default:
            return [MSGraphTaskStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTaskStatusNotStarted:
            return @"notStarted";
        case MSGraphTaskStatusInProgress:
            return @"inProgress";
        case MSGraphTaskStatusCompleted:
            return @"completed";
        case MSGraphTaskStatusWaitingOnOthers:
            return @"waitingOnOthers";
        case MSGraphTaskStatusDeferred:
            return @"deferred";
        case MSGraphTaskStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTaskStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTaskStatus)

- (MSGraphTaskStatus*) toMSGraphTaskStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphTaskStatus notStarted];
    }
    else if([self isEqualToString:@"inProgress"])
    {
          return [MSGraphTaskStatus inProgress];
    }
    else if([self isEqualToString:@"completed"])
    {
          return [MSGraphTaskStatus completed];
    }
    else if([self isEqualToString:@"waitingOnOthers"])
    {
          return [MSGraphTaskStatus waitingOnOthers];
    }
    else if([self isEqualToString:@"deferred"])
    {
          return [MSGraphTaskStatus deferred];
    }
    else {
        return [MSGraphTaskStatus UnknownEnumValue];
    }
}

@end
