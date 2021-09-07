// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConditionalAccessApplications : MSObject

@property (nonnull, nonatomic, setter=setExcludeApplications:, getter=excludeApplications) NSArray* excludeApplications;
@property (nonnull, nonatomic, setter=setIncludeApplications:, getter=includeApplications) NSArray* includeApplications;
@property (nonnull, nonatomic, setter=setIncludeAuthenticationContextClassReferences:, getter=includeAuthenticationContextClassReferences) NSArray* includeAuthenticationContextClassReferences;
@property (nonnull, nonatomic, setter=setIncludeUserActions:, getter=includeUserActions) NSArray* includeUserActions;

@end
