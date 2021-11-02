// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphEdiscoveryTopicModelingSettings : MSObject

@property (nonatomic, setter=setDynamicallyAdjustTopicCount:, getter=dynamicallyAdjustTopicCount) BOOL dynamicallyAdjustTopicCount;
@property (nonatomic, setter=setIgnoreNumbers:, getter=ignoreNumbers) BOOL ignoreNumbers;
@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nonatomic, setter=setTopicCount:, getter=topicCount) int32_t topicCount;

@end
