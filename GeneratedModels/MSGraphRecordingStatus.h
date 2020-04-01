// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRecordingStatusValue){

	MSGraphRecordingStatusUnknown = 0,
	MSGraphRecordingStatusNotRecording = 1,
	MSGraphRecordingStatusRecording = 2,
	MSGraphRecordingStatusFailed = 3,
	MSGraphRecordingStatusUnknownFutureValue = 4,
    MSGraphRecordingStatusEndOfEnum
};

@interface MSGraphRecordingStatus : NSObject

+(MSGraphRecordingStatus*) unknown;
+(MSGraphRecordingStatus*) notRecording;
+(MSGraphRecordingStatus*) recording;
+(MSGraphRecordingStatus*) failed;
+(MSGraphRecordingStatus*) unknownFutureValue;

+(MSGraphRecordingStatus*) UnknownEnumValue;

+(MSGraphRecordingStatus*) recordingStatusWithEnumValue:(MSGraphRecordingStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRecordingStatusValue enumValue;

@end


@interface NSString (MSGraphRecordingStatus)

- (MSGraphRecordingStatus*) toMSGraphRecordingStatus;

@end
