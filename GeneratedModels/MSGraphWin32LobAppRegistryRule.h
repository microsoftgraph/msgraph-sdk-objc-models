// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRegistryRuleOperationType.h"
#import "MSGraphWin32LobAppRuleOperator.h"


#import "MSGraphWin32LobAppRule.h"

@interface MSGraphWin32LobAppRegistryRule : MSGraphWin32LobAppRule

@property (nonatomic, setter=setCheck32BitOn64System:, getter=check32BitOn64System) BOOL check32BitOn64System;
@property (nullable, nonatomic, setter=setComparisonValue:, getter=comparisonValue) NSString* comparisonValue;
@property (nullable, nonatomic, setter=setKeyPath:, getter=keyPath) NSString* keyPath;
@property (nonnull, nonatomic, setter=setOperationType:, getter=operationType) MSGraphWin32LobAppRegistryRuleOperationType* operationType;
@property (nonnull, nonatomic, setter=setOperator:, getter=operator) MSGraphWin32LobAppRuleOperator* operator;
@property (nullable, nonatomic, setter=setValueName:, getter=valueName) NSString* valueName;

@end
