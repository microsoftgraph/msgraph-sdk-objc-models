// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRuleType.h"


#import "MSObject.h"

@interface MSGraphWin32LobAppRule : MSObject

@property (nonnull, nonatomic, setter=setRuleType:, getter=ruleType) MSGraphWin32LobAppRuleType* ruleType;

@end
