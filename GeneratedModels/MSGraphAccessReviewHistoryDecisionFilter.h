// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewHistoryDecisionFilterValue){

	MSGraphAccessReviewHistoryDecisionFilterApprove = 0,
	MSGraphAccessReviewHistoryDecisionFilterDeny = 1,
	MSGraphAccessReviewHistoryDecisionFilterNotReviewed = 2,
	MSGraphAccessReviewHistoryDecisionFilterDontKnow = 3,
	MSGraphAccessReviewHistoryDecisionFilterNotNotified = 4,
	MSGraphAccessReviewHistoryDecisionFilterUnknownFutureValue = 5,
    MSGraphAccessReviewHistoryDecisionFilterEndOfEnum
};

@interface MSGraphAccessReviewHistoryDecisionFilter : NSObject

+(MSGraphAccessReviewHistoryDecisionFilter*) approve;
+(MSGraphAccessReviewHistoryDecisionFilter*) deny;
+(MSGraphAccessReviewHistoryDecisionFilter*) notReviewed;
+(MSGraphAccessReviewHistoryDecisionFilter*) dontKnow;
+(MSGraphAccessReviewHistoryDecisionFilter*) notNotified;
+(MSGraphAccessReviewHistoryDecisionFilter*) unknownFutureValue;

+(MSGraphAccessReviewHistoryDecisionFilter*) UnknownEnumValue;

+(MSGraphAccessReviewHistoryDecisionFilter*) accessReviewHistoryDecisionFilterWithEnumValue:(MSGraphAccessReviewHistoryDecisionFilterValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewHistoryDecisionFilterValue enumValue;

@end


@interface NSString (MSGraphAccessReviewHistoryDecisionFilter)

- (MSGraphAccessReviewHistoryDecisionFilter*) toMSGraphAccessReviewHistoryDecisionFilter;

@end
