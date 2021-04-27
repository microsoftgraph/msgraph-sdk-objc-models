// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue){

	MSGraphAccessReviewInstanceFilterByCurrentUserOptionsReviewer = 1,
	MSGraphAccessReviewInstanceFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphAccessReviewInstanceFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessReviewInstanceFilterByCurrentUserOptions : NSObject

+(MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) reviewer;
+(MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) accessReviewInstanceFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewInstanceFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessReviewInstanceFilterByCurrentUserOptions)

- (MSGraphAccessReviewInstanceFilterByCurrentUserOptions*) toMSGraphAccessReviewInstanceFilterByCurrentUserOptions;

@end
