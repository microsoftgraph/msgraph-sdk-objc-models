// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConditionalAccessLocations : MSObject

@property (nonnull, nonatomic, setter=setIncludeLocations:, getter=includeLocations) NSArray* includeLocations;
@property (nonnull, nonatomic, setter=setExcludeLocations:, getter=excludeLocations) NSArray* excludeLocations;

@end
