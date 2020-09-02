// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConditionalAccessUsers : MSObject

@property (nonnull, nonatomic, setter=setExcludeGroups:, getter=excludeGroups) NSArray* excludeGroups;
@property (nonnull, nonatomic, setter=setExcludeRoles:, getter=excludeRoles) NSArray* excludeRoles;
@property (nonnull, nonatomic, setter=setExcludeUsers:, getter=excludeUsers) NSArray* excludeUsers;
@property (nonnull, nonatomic, setter=setIncludeGroups:, getter=includeGroups) NSArray* includeGroups;
@property (nonnull, nonatomic, setter=setIncludeRoles:, getter=includeRoles) NSArray* includeRoles;
@property (nonnull, nonatomic, setter=setIncludeUsers:, getter=includeUsers) NSArray* includeUsers;

@end
