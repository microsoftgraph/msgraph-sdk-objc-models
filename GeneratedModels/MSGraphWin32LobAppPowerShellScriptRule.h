// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppPowerShellScriptRuleOperationType.h"
#import "MSGraphWin32LobAppRuleOperator.h"
#import "MSGraphRunAsAccountType.h"


#import "MSGraphWin32LobAppRule.h"

@interface MSGraphWin32LobAppPowerShellScriptRule : MSGraphWin32LobAppRule

@property (nullable, nonatomic, setter=setComparisonValue:, getter=comparisonValue) NSString* comparisonValue;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonatomic, setter=setEnforceSignatureCheck:, getter=enforceSignatureCheck) BOOL enforceSignatureCheck;
@property (nonnull, nonatomic, setter=setOperationType:, getter=operationType) MSGraphWin32LobAppPowerShellScriptRuleOperationType* operationType;
@property (nonnull, nonatomic, setter=setOperator:, getter=operator) MSGraphWin32LobAppRuleOperator* operator;
@property (nonatomic, setter=setRunAs32Bit:, getter=runAs32Bit) BOOL runAs32Bit;
@property (nullable, nonatomic, setter=setRunAsAccount:, getter=runAsAccount) MSGraphRunAsAccountType* runAsAccount;
@property (nullable, nonatomic, setter=setScriptContent:, getter=scriptContent) NSString* scriptContent;

@end
