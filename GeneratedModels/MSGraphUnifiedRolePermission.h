// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUnifiedRolePermission : MSObject

@property (nonnull, nonatomic, setter=setAllowedResourceActions:, getter=allowedResourceActions) NSArray* allowedResourceActions;
@property (nullable, nonatomic, setter=setCondition:, getter=condition) NSString* condition;
@property (nullable, nonatomic, setter=setExcludedResourceActions:, getter=excludedResourceActions) NSArray* excludedResourceActions;

@end
