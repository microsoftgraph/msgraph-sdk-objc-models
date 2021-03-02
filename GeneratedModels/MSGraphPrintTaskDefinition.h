// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppIdentity, MSGraphPrintTask; 


#import "MSGraphEntity.h"

@interface MSGraphPrintTaskDefinition : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphAppIdentity* createdBy;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
  
@end
