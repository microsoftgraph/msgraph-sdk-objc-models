// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue){

	MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsReviewer = 1,
	MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions : NSObject

+(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) reviewer;
+(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) accessReviewInstanceDecisionItemFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions)

- (MSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions*) toMSGraphAccessReviewInstanceDecisionItemFilterByCurrentUserOptions;

@end
