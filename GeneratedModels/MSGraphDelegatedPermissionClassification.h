// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphPermissionClassificationType.h"


#import "MSGraphEntity.h"

@interface MSGraphDelegatedPermissionClassification : MSGraphEntity

  @property (nullable, nonatomic, setter=setClassification:, getter=classification) MSGraphPermissionClassificationType* classification;
    @property (nullable, nonatomic, setter=setPermissionId:, getter=permissionId) NSString* permissionId;
    @property (nullable, nonatomic, setter=setPermissionName:, getter=permissionName) NSString* permissionName;
  
@end
