// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkActivityTopicSource.h"


#import "MSObject.h"

@interface MSGraphTeamworkActivityTopic : MSObject

@property (nullable, nonatomic, setter=setSource:, getter=source) MSGraphTeamworkActivityTopicSource* source;
@property (nonnull, nonatomic, setter=setValue:, getter=value) NSString* value;
@property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;

@end
