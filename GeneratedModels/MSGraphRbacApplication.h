// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRoleAssignment, MSGraphUnifiedRoleDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphRbacApplication : MSGraphEntity

  @property (nullable, nonatomic, setter=setRoleAssignments:, getter=roleAssignments) NSArray* roleAssignments;
    @property (nullable, nonatomic, setter=setRoleDefinitions:, getter=roleDefinitions) NSArray* roleDefinitions;
  
@end
