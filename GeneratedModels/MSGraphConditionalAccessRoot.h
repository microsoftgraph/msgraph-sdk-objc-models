// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConditionalAccessPolicy, MSGraphNamedLocation; 


#import "MSGraphEntity.h"

@interface MSGraphConditionalAccessRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setPolicies:, getter=policies) NSArray* policies;
    @property (nullable, nonatomic, setter=setNamedLocations:, getter=namedLocations) NSArray* namedLocations;
  
@end
