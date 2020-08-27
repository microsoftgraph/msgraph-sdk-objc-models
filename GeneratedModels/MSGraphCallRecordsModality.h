// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsModalityValue){

	MSGraphCallRecordsModalityAudio = 0,
	MSGraphCallRecordsModalityVideo = 1,
	MSGraphCallRecordsModalityVideoBasedScreenSharing = 2,
	MSGraphCallRecordsModalityData = 3,
	MSGraphCallRecordsModalityScreenSharing = 4,
	MSGraphCallRecordsModalityUnknownFutureValue = 5,
    MSGraphCallRecordsModalityEndOfEnum
};

@interface MSGraphCallRecordsModality : NSObject

+(MSGraphCallRecordsModality*) audio;
+(MSGraphCallRecordsModality*) video;
+(MSGraphCallRecordsModality*) videoBasedScreenSharing;
+(MSGraphCallRecordsModality*) data;
+(MSGraphCallRecordsModality*) screenSharing;
+(MSGraphCallRecordsModality*) unknownFutureValue;

+(MSGraphCallRecordsModality*) UnknownEnumValue;

+(MSGraphCallRecordsModality*) modalityWithEnumValue:(MSGraphCallRecordsModalityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsModalityValue enumValue;

@end


@interface NSString (MSGraphCallRecordsModality)

- (MSGraphCallRecordsModality*) toMSGraphCallRecordsModality;

@end
