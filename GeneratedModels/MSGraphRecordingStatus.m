// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRecordingStatus.h"

@interface MSGraphRecordingStatus () {
    MSGraphRecordingStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRecordingStatusValue enumValue;
@end

@implementation MSGraphRecordingStatus

+ (MSGraphRecordingStatus*) unknown {
    static MSGraphRecordingStatus *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphRecordingStatus alloc] init];
        _unknown.enumValue = MSGraphRecordingStatusUnknown;
    });
    return _unknown;
}
+ (MSGraphRecordingStatus*) notRecording {
    static MSGraphRecordingStatus *_notRecording;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notRecording = [[MSGraphRecordingStatus alloc] init];
        _notRecording.enumValue = MSGraphRecordingStatusNotRecording;
    });
    return _notRecording;
}
+ (MSGraphRecordingStatus*) recording {
    static MSGraphRecordingStatus *_recording;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _recording = [[MSGraphRecordingStatus alloc] init];
        _recording.enumValue = MSGraphRecordingStatusRecording;
    });
    return _recording;
}
+ (MSGraphRecordingStatus*) failed {
    static MSGraphRecordingStatus *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphRecordingStatus alloc] init];
        _failed.enumValue = MSGraphRecordingStatusFailed;
    });
    return _failed;
}
+ (MSGraphRecordingStatus*) unknownFutureValue {
    static MSGraphRecordingStatus *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRecordingStatus alloc] init];
        _unknownFutureValue.enumValue = MSGraphRecordingStatusUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRecordingStatus*) UnknownEnumValue {
    static MSGraphRecordingStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRecordingStatus alloc] init];
        _unknownValue.enumValue = MSGraphRecordingStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRecordingStatus*) recordingStatusWithEnumValue:(MSGraphRecordingStatusValue)val {

    switch(val)
    {
        case MSGraphRecordingStatusUnknown:
            return [MSGraphRecordingStatus unknown];
        case MSGraphRecordingStatusNotRecording:
            return [MSGraphRecordingStatus notRecording];
        case MSGraphRecordingStatusRecording:
            return [MSGraphRecordingStatus recording];
        case MSGraphRecordingStatusFailed:
            return [MSGraphRecordingStatus failed];
        case MSGraphRecordingStatusUnknownFutureValue:
            return [MSGraphRecordingStatus unknownFutureValue];
        case MSGraphRecordingStatusEndOfEnum:
        default:
            return [MSGraphRecordingStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRecordingStatusUnknown:
            return @"unknown";
        case MSGraphRecordingStatusNotRecording:
            return @"notRecording";
        case MSGraphRecordingStatusRecording:
            return @"recording";
        case MSGraphRecordingStatusFailed:
            return @"failed";
        case MSGraphRecordingStatusUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRecordingStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRecordingStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRecordingStatus)

- (MSGraphRecordingStatus*) toMSGraphRecordingStatus{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphRecordingStatus unknown];
    }
    else if([self isEqualToString:@"notRecording"])
    {
          return [MSGraphRecordingStatus notRecording];
    }
    else if([self isEqualToString:@"recording"])
    {
          return [MSGraphRecordingStatus recording];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphRecordingStatus failed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRecordingStatus unknownFutureValue];
    }
    else {
        return [MSGraphRecordingStatus UnknownEnumValue];
    }
}

@end
