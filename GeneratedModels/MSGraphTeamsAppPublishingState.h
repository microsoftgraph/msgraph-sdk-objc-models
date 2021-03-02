// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamsAppPublishingStateValue){

	MSGraphTeamsAppPublishingStateSubmitted = 0,
	MSGraphTeamsAppPublishingStateRejected = 1,
	MSGraphTeamsAppPublishingStatePublished = 2,
	MSGraphTeamsAppPublishingStateUnknownFutureValue = 3,
    MSGraphTeamsAppPublishingStateEndOfEnum
};

@interface MSGraphTeamsAppPublishingState : NSObject

+(MSGraphTeamsAppPublishingState*) submitted;
+(MSGraphTeamsAppPublishingState*) rejected;
+(MSGraphTeamsAppPublishingState*) published;
+(MSGraphTeamsAppPublishingState*) unknownFutureValue;

+(MSGraphTeamsAppPublishingState*) UnknownEnumValue;

+(MSGraphTeamsAppPublishingState*) teamsAppPublishingStateWithEnumValue:(MSGraphTeamsAppPublishingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamsAppPublishingStateValue enumValue;

@end


@interface NSString (MSGraphTeamsAppPublishingState)

- (MSGraphTeamsAppPublishingState*) toMSGraphTeamsAppPublishingState;

@end
