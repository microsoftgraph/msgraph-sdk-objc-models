// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryCaseOperationStatus.h"

@interface MSGraphEdiscoveryCaseOperationStatus () {
    MSGraphEdiscoveryCaseOperationStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryCaseOperationStatusValue enumValue;
@end

@implementation MSGraphEdiscoveryCaseOperationStatus

+ (MSGraphEdiscoveryCaseOperationStatus*) notStarted {
    static MSGraphEdiscoveryCaseOperationStatus *_notStarted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notStarted = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _notStarted.enumValue = MSGraphEdiscoveryCaseOperationStatusNotStarted;
    });
    return _notStarted;
}
+ (MSGraphEdiscoveryCaseOperationStatus*) submissionFailed {
    static MSGraphEdiscoveryCaseOperationStatus *_submissionFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _submissionFailed = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _submissionFailed.enumValue = MSGraphEdiscoveryCaseOperationStatusSubmissionFailed;
    });
    return _submissionFailed;
}
+ (MSGraphEdiscoveryCaseOperationStatus*) running {
    static MSGraphEdiscoveryCaseOperationStatus *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _running.enumValue = MSGraphEdiscoveryCaseOperationStatusRunning;
    });
    return _running;
}
+ (MSGraphEdiscoveryCaseOperationStatus*) succeeded {
    static MSGraphEdiscoveryCaseOperationStatus *_succeeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _succeeded = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _succeeded.enumValue = MSGraphEdiscoveryCaseOperationStatusSucceeded;
    });
    return _succeeded;
}
+ (MSGraphEdiscoveryCaseOperationStatus*) partiallySucceeded {
    static MSGraphEdiscoveryCaseOperationStatus *_partiallySucceeded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _partiallySucceeded = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _partiallySucceeded.enumValue = MSGraphEdiscoveryCaseOperationStatusPartiallySucceeded;
    });
    return _partiallySucceeded;
}
+ (MSGraphEdiscoveryCaseOperationStatus*) failed {
    static MSGraphEdiscoveryCaseOperationStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _failed.enumValue = MSGraphEdiscoveryCaseOperationStatusFailed;
    });
    return _failed;
}

+ (MSGraphEdiscoveryCaseOperationStatus*) UnknownEnumValue {
    static MSGraphEdiscoveryCaseOperationStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryCaseOperationStatus alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryCaseOperationStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryCaseOperationStatus*) caseOperationStatusWithEnumValue:(MSGraphEdiscoveryCaseOperationStatusValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryCaseOperationStatusNotStarted:
            return [MSGraphEdiscoveryCaseOperationStatus notStarted];
        case MSGraphEdiscoveryCaseOperationStatusSubmissionFailed:
            return [MSGraphEdiscoveryCaseOperationStatus submissionFailed];
        case MSGraphEdiscoveryCaseOperationStatusRunning:
            return [MSGraphEdiscoveryCaseOperationStatus running];
        case MSGraphEdiscoveryCaseOperationStatusSucceeded:
            return [MSGraphEdiscoveryCaseOperationStatus succeeded];
        case MSGraphEdiscoveryCaseOperationStatusPartiallySucceeded:
            return [MSGraphEdiscoveryCaseOperationStatus partiallySucceeded];
        case MSGraphEdiscoveryCaseOperationStatusFailed:
            return [MSGraphEdiscoveryCaseOperationStatus failed];
        case MSGraphEdiscoveryCaseOperationStatusEndOfEnum:
        default:
            return [MSGraphEdiscoveryCaseOperationStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryCaseOperationStatusNotStarted:
            return @"notStarted";
        case MSGraphEdiscoveryCaseOperationStatusSubmissionFailed:
            return @"submissionFailed";
        case MSGraphEdiscoveryCaseOperationStatusRunning:
            return @"running";
        case MSGraphEdiscoveryCaseOperationStatusSucceeded:
            return @"succeeded";
        case MSGraphEdiscoveryCaseOperationStatusPartiallySucceeded:
            return @"partiallySucceeded";
        case MSGraphEdiscoveryCaseOperationStatusFailed:
            return @"failed";
        case MSGraphEdiscoveryCaseOperationStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryCaseOperationStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryCaseOperationStatus)

- (MSGraphEdiscoveryCaseOperationStatus*) toMSGraphEdiscoveryCaseOperationStatus{

    if([self isEqualToString:@"notStarted"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus notStarted];
    }
    else if([self isEqualToString:@"submissionFailed"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus submissionFailed];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus running];
    }
    else if([self isEqualToString:@"succeeded"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus succeeded];
    }
    else if([self isEqualToString:@"partiallySucceeded"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus partiallySucceeded];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphEdiscoveryCaseOperationStatus failed];
    }
    else {
        return [MSGraphEdiscoveryCaseOperationStatus UnknownEnumValue];
    }
}

@end
