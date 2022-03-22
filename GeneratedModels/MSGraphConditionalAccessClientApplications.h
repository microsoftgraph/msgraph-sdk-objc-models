// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConditionalAccessClientApplications : MSObject

@property (nonnull, nonatomic, setter=setExcludeServicePrincipals:, getter=excludeServicePrincipals) NSArray* excludeServicePrincipals;
@property (nonnull, nonatomic, setter=setIncludeServicePrincipals:, getter=includeServicePrincipals) NSArray* includeServicePrincipals;

@end
