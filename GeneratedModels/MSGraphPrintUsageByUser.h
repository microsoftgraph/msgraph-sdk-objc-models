// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphPrintUsage.h"

@interface MSGraphPrintUsageByUser : MSGraphPrintUsage

  @property (nonnull, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
