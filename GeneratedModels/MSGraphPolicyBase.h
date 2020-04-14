// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphPolicyBase : MSGraphEntity

  @property (nonnull, nonatomic, setter=setPolicyBaseDescription:, getter=policyBaseDescription) NSString* policyBaseDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
  
@end
