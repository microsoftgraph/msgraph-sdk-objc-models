// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessDevicePlatform.h"


#import "MSObject.h"

@interface MSGraphConditionalAccessPlatforms : MSObject

@property (nonnull, nonatomic, setter=setIncludePlatforms:, getter=includePlatforms) NSArray* includePlatforms;
@property (nonnull, nonatomic, setter=setExcludePlatforms:, getter=excludePlatforms) NSArray* excludePlatforms;

@end
