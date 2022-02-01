// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordingStatusValue){

	MSGraphCallRecordingStatusSuccess = 0,
	MSGraphCallRecordingStatusFailure = 1,
	MSGraphCallRecordingStatusInitial = 2,
	MSGraphCallRecordingStatusChunkFinished = 3,
	MSGraphCallRecordingStatusUnknownFutureValue = 4,
    MSGraphCallRecordingStatusEndOfEnum
};

@interface MSGraphCallRecordingStatus : NSObject

+(MSGraphCallRecordingStatus*) success;
+(MSGraphCallRecordingStatus*) failure;
+(MSGraphCallRecordingStatus*) initial;
+(MSGraphCallRecordingStatus*) chunkFinished;
+(MSGraphCallRecordingStatus*) unknownFutureValue;

+(MSGraphCallRecordingStatus*) UnknownEnumValue;

+(MSGraphCallRecordingStatus*) callRecordingStatusWithEnumValue:(MSGraphCallRecordingStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordingStatusValue enumValue;

@end


@interface NSString (MSGraphCallRecordingStatus)

- (MSGraphCallRecordingStatus*) toMSGraphCallRecordingStatus;

@end
