// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTeamworkActivityTopicSourceValue){

	MSGraphTeamworkActivityTopicSourceEntityUrl = 0,
	MSGraphTeamworkActivityTopicSourceText = 1,
    MSGraphTeamworkActivityTopicSourceEndOfEnum
};

@interface MSGraphTeamworkActivityTopicSource : NSObject

+(MSGraphTeamworkActivityTopicSource*) entityUrl;
+(MSGraphTeamworkActivityTopicSource*) text;

+(MSGraphTeamworkActivityTopicSource*) UnknownEnumValue;

+(MSGraphTeamworkActivityTopicSource*) teamworkActivityTopicSourceWithEnumValue:(MSGraphTeamworkActivityTopicSourceValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTeamworkActivityTopicSourceValue enumValue;

@end


@interface NSString (MSGraphTeamworkActivityTopicSource)

- (MSGraphTeamworkActivityTopicSource*) toMSGraphTeamworkActivityTopicSource;

@end
