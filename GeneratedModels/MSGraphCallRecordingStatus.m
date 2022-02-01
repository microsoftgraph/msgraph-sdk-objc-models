// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordingStatus.h"

@interface MSGraphCallRecordingStatus () {
    MSGraphCallRecordingStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordingStatusValue enumValue;
@end

@implementation MSGraphCallRecordingStatus

+ (MSGraphCallRecordingStatus*) success {
    static MSGraphCallRecordingStatus *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphCallRecordingStatus alloc] init];
        _success.enumValue = MSGraphCallRecordingStatusSuccess;
    });
    return _success;
}
+ (MSGraphCallRecordingStatus*) failure {
    static MSGraphCallRecordingStatus *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphCallRecordingStatus alloc] init];
        _failure.enumValue = MSGraphCallRecordingStatusFailure;
    });
    return _failure;
}
+ (MSGraphCallRecordingStatus*) initial {
    static MSGraphCallRecordingStatus *_initial;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _initial = [[MSGraphCallRecordingStatus alloc] init];
        _initial.enumValue = MSGraphCallRecordingStatusInitial;
    });
    return _initial;
}
+ (MSGraphCallRecordingStatus*) chunkFinished {
    static MSGraphCallRecordingStatus *_chunkFinished;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _chunkFinished = [[MSGraphCallRecordingStatus alloc] init];
        _chunkFinished.enumValue = MSGraphCallRecordingStatusChunkFinished;
    });
    return _chunkFinished;
}
+ (MSGraphCallRecordingStatus*) unknownFutureValue {
    static MSGraphCallRecordingStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordingStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordingStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordingStatus*) UnknownEnumValue {
    static MSGraphCallRecordingStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordingStatus alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordingStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordingStatus*) callRecordingStatusWithEnumValue:(MSGraphCallRecordingStatusValue)val {

    switch(val)
    {
        case MSGraphCallRecordingStatusSuccess:
            return [MSGraphCallRecordingStatus success];
        case MSGraphCallRecordingStatusFailure:
            return [MSGraphCallRecordingStatus failure];
        case MSGraphCallRecordingStatusInitial:
            return [MSGraphCallRecordingStatus initial];
        case MSGraphCallRecordingStatusChunkFinished:
            return [MSGraphCallRecordingStatus chunkFinished];
        case MSGraphCallRecordingStatusUnknownFutureValue:
            return [MSGraphCallRecordingStatus unknownFutureValue];
        case MSGraphCallRecordingStatusEndOfEnum:
        default:
            return [MSGraphCallRecordingStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordingStatusSuccess:
            return @"success";
        case MSGraphCallRecordingStatusFailure:
            return @"failure";
        case MSGraphCallRecordingStatusInitial:
            return @"initial";
        case MSGraphCallRecordingStatusChunkFinished:
            return @"chunkFinished";
        case MSGraphCallRecordingStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordingStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordingStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordingStatus)

- (MSGraphCallRecordingStatus*) toMSGraphCallRecordingStatus{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphCallRecordingStatus success];
    }
    else if([self isEqualToString:@"failure"])
    {
          return [MSGraphCallRecordingStatus failure];
    }
    else if([self isEqualToString:@"initial"])
    {
          return [MSGraphCallRecordingStatus initial];
    }
    else if([self isEqualToString:@"chunkFinished"])
    {
          return [MSGraphCallRecordingStatus chunkFinished];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordingStatus unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordingStatus UnknownEnumValue];
    }
}

@end
