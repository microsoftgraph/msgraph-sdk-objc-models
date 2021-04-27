// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue){

	MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsReviewer = 1,
	MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsUnknownFutureValue = 2,
    MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions : NSObject

+(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) reviewer;
+(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) accessReviewScheduleDefinitionFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions)

- (MSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions*) toMSGraphAccessReviewScheduleDefinitionFilterByCurrentUserOptions;

@end
