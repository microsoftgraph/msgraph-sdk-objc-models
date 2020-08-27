// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsUserFeedbackRatingValue){

	MSGraphCallRecordsUserFeedbackRatingNotRated = 0,
	MSGraphCallRecordsUserFeedbackRatingBad = 1,
	MSGraphCallRecordsUserFeedbackRatingPoor = 2,
	MSGraphCallRecordsUserFeedbackRatingFair = 3,
	MSGraphCallRecordsUserFeedbackRatingGood = 4,
	MSGraphCallRecordsUserFeedbackRatingExcellent = 5,
	MSGraphCallRecordsUserFeedbackRatingUnknownFutureValue = 6,
    MSGraphCallRecordsUserFeedbackRatingEndOfEnum
};

@interface MSGraphCallRecordsUserFeedbackRating : NSObject

+(MSGraphCallRecordsUserFeedbackRating*) notRated;
+(MSGraphCallRecordsUserFeedbackRating*) bad;
+(MSGraphCallRecordsUserFeedbackRating*) poor;
+(MSGraphCallRecordsUserFeedbackRating*) fair;
+(MSGraphCallRecordsUserFeedbackRating*) good;
+(MSGraphCallRecordsUserFeedbackRating*) excellent;
+(MSGraphCallRecordsUserFeedbackRating*) unknownFutureValue;

+(MSGraphCallRecordsUserFeedbackRating*) UnknownEnumValue;

+(MSGraphCallRecordsUserFeedbackRating*) userFeedbackRatingWithEnumValue:(MSGraphCallRecordsUserFeedbackRatingValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsUserFeedbackRatingValue enumValue;

@end


@interface NSString (MSGraphCallRecordsUserFeedbackRating)

- (MSGraphCallRecordsUserFeedbackRating*) toMSGraphCallRecordsUserFeedbackRating;

@end
