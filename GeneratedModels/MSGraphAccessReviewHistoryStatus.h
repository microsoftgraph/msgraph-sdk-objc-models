// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewHistoryStatusValue){

	MSGraphAccessReviewHistoryStatusDone = 0,
	MSGraphAccessReviewHistoryStatusInprogress = 1,
	MSGraphAccessReviewHistoryStatusError = 2,
	MSGraphAccessReviewHistoryStatusRequested = 3,
	MSGraphAccessReviewHistoryStatusUnknownFutureValue = 4,
    MSGraphAccessReviewHistoryStatusEndOfEnum
};

@interface MSGraphAccessReviewHistoryStatus : NSObject

+(MSGraphAccessReviewHistoryStatus*) done;
+(MSGraphAccessReviewHistoryStatus*) inprogress;
+(MSGraphAccessReviewHistoryStatus*) error;
+(MSGraphAccessReviewHistoryStatus*) requested;
+(MSGraphAccessReviewHistoryStatus*) unknownFutureValue;

+(MSGraphAccessReviewHistoryStatus*) UnknownEnumValue;

+(MSGraphAccessReviewHistoryStatus*) accessReviewHistoryStatusWithEnumValue:(MSGraphAccessReviewHistoryStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewHistoryStatusValue enumValue;

@end


@interface NSString (MSGraphAccessReviewHistoryStatus)

- (MSGraphAccessReviewHistoryStatus*) toMSGraphAccessReviewHistoryStatus;

@end
