// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticationMethodTargetType.h"


#import "MSObject.h"

@interface MSGraphExcludeTarget : MSObject

@property (nonnull, nonatomic, setter=setExcludeTargetId:, getter=excludeTargetId) NSString* excludeTargetId;
@property (nonnull, nonatomic, setter=setTargetType:, getter=targetType) MSGraphAuthenticationMethodTargetType* targetType;

@end
