// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessReviewExpirationBehaviorValue){

	MSGraphAccessReviewExpirationBehaviorKeepAccess = 0,
	MSGraphAccessReviewExpirationBehaviorRemoveAccess = 1,
	MSGraphAccessReviewExpirationBehaviorAcceptAccessRecommendation = 2,
	MSGraphAccessReviewExpirationBehaviorUnknownFutureValue = 99,
    MSGraphAccessReviewExpirationBehaviorEndOfEnum
};

@interface MSGraphAccessReviewExpirationBehavior : NSObject

+(MSGraphAccessReviewExpirationBehavior*) keepAccess;
+(MSGraphAccessReviewExpirationBehavior*) removeAccess;
+(MSGraphAccessReviewExpirationBehavior*) acceptAccessRecommendation;
+(MSGraphAccessReviewExpirationBehavior*) unknownFutureValue;

+(MSGraphAccessReviewExpirationBehavior*) UnknownEnumValue;

+(MSGraphAccessReviewExpirationBehavior*) accessReviewExpirationBehaviorWithEnumValue:(MSGraphAccessReviewExpirationBehaviorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessReviewExpirationBehaviorValue enumValue;

@end


@interface NSString (MSGraphAccessReviewExpirationBehavior)

- (MSGraphAccessReviewExpirationBehavior*) toMSGraphAccessReviewExpirationBehavior;

@end
