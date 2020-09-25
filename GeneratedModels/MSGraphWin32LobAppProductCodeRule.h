// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRuleOperator.h"


#import "MSGraphWin32LobAppRule.h"

@interface MSGraphWin32LobAppProductCodeRule : MSGraphWin32LobAppRule

@property (nullable, nonatomic, setter=setProductCode:, getter=productCode) NSString* productCode;
@property (nullable, nonatomic, setter=setProductVersion:, getter=productVersion) NSString* productVersion;
@property (nonnull, nonatomic, setter=setProductVersionOperator:, getter=productVersionOperator) MSGraphWin32LobAppRuleOperator* productVersionOperator;

@end
