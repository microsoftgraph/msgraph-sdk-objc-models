// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsModality.h"

@interface MSGraphCallRecordsModality () {
    MSGraphCallRecordsModalityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsModalityValue enumValue;
@end

@implementation MSGraphCallRecordsModality

+ (MSGraphCallRecordsModality*) audio {
    static MSGraphCallRecordsModality *_audio;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _audio = [[MSGraphCallRecordsModality alloc] init];
        _audio.enumValue = MSGraphCallRecordsModalityAudio;
    });
    return _audio;
}
+ (MSGraphCallRecordsModality*) video {
    static MSGraphCallRecordsModality *_video;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _video = [[MSGraphCallRecordsModality alloc] init];
        _video.enumValue = MSGraphCallRecordsModalityVideo;
    });
    return _video;
}
+ (MSGraphCallRecordsModality*) videoBasedScreenSharing {
    static MSGraphCallRecordsModality *_videoBasedScreenSharing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _videoBasedScreenSharing = [[MSGraphCallRecordsModality alloc] init];
        _videoBasedScreenSharing.enumValue = MSGraphCallRecordsModalityVideoBasedScreenSharing;
    });
    return _videoBasedScreenSharing;
}
+ (MSGraphCallRecordsModality*) data {
    static MSGraphCallRecordsModality *_data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _data = [[MSGraphCallRecordsModality alloc] init];
        _data.enumValue = MSGraphCallRecordsModalityData;
    });
    return _data;
}
+ (MSGraphCallRecordsModality*) screenSharing {
    static MSGraphCallRecordsModality *_screenSharing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _screenSharing = [[MSGraphCallRecordsModality alloc] init];
        _screenSharing.enumValue = MSGraphCallRecordsModalityScreenSharing;
    });
    return _screenSharing;
}
+ (MSGraphCallRecordsModality*) unknownFutureValue {
    static MSGraphCallRecordsModality *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsModality alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsModalityUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsModality*) UnknownEnumValue {
    static MSGraphCallRecordsModality *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsModality alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsModalityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsModality*) modalityWithEnumValue:(MSGraphCallRecordsModalityValue)val {

    switch(val)
    {
        case MSGraphCallRecordsModalityAudio:
            return [MSGraphCallRecordsModality audio];
        case MSGraphCallRecordsModalityVideo:
            return [MSGraphCallRecordsModality video];
        case MSGraphCallRecordsModalityVideoBasedScreenSharing:
            return [MSGraphCallRecordsModality videoBasedScreenSharing];
        case MSGraphCallRecordsModalityData:
            return [MSGraphCallRecordsModality data];
        case MSGraphCallRecordsModalityScreenSharing:
            return [MSGraphCallRecordsModality screenSharing];
        case MSGraphCallRecordsModalityUnknownFutureValue:
            return [MSGraphCallRecordsModality unknownFutureValue];
        case MSGraphCallRecordsModalityEndOfEnum:
        default:
            return [MSGraphCallRecordsModality UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsModalityAudio:
            return @"audio";
        case MSGraphCallRecordsModalityVideo:
            return @"video";
        case MSGraphCallRecordsModalityVideoBasedScreenSharing:
            return @"videoBasedScreenSharing";
        case MSGraphCallRecordsModalityData:
            return @"data";
        case MSGraphCallRecordsModalityScreenSharing:
            return @"screenSharing";
        case MSGraphCallRecordsModalityUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsModalityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsModalityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsModality)

- (MSGraphCallRecordsModality*) toMSGraphCallRecordsModality{

    if([self isEqualToString:@"audio"])
    {
          return [MSGraphCallRecordsModality audio];
    }
    else if([self isEqualToString:@"video"])
    {
          return [MSGraphCallRecordsModality video];
    }
    else if([self isEqualToString:@"videoBasedScreenSharing"])
    {
          return [MSGraphCallRecordsModality videoBasedScreenSharing];
    }
    else if([self isEqualToString:@"data"])
    {
          return [MSGraphCallRecordsModality data];
    }
    else if([self isEqualToString:@"screenSharing"])
    {
          return [MSGraphCallRecordsModality screenSharing];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsModality unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsModality UnknownEnumValue];
    }
}

@end
