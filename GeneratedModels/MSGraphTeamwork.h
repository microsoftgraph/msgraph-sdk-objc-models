// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkforceIntegration; 


#import "MSGraphEntity.h"

@interface MSGraphTeamwork : MSGraphEntity

  @property (nullable, nonatomic, setter=setWorkforceIntegrations:, getter=workforceIntegrations) NSArray* workforceIntegrations;
  
@end
