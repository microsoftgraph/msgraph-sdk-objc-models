// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDirectoryObject; 


#import "MSGraphPolicyBase.h"

@interface MSGraphStsPolicy : MSGraphPolicyBase

  @property (nonnull, nonatomic, setter=setDefinition:, getter=definition) NSArray* definition;
    @property (nonatomic, setter=setIsOrganizationDefault:, getter=isOrganizationDefault) BOOL isOrganizationDefault;
    @property (nullable, nonatomic, setter=setAppliesTo:, getter=appliesTo) NSArray* appliesTo;
  
@end
