// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChatMessagePolicyViolationPolicyTip : MSObject

@property (nullable, nonatomic, setter=setGeneralText:, getter=generalText) NSString* generalText;
@property (nullable, nonatomic, setter=setComplianceUrl:, getter=complianceUrl) NSString* complianceUrl;
@property (nullable, nonatomic, setter=setMatchedConditionDescriptions:, getter=matchedConditionDescriptions) NSArray* matchedConditionDescriptions;

@end
