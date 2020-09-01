// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphOptionalClaim : MSObject

@property (nullable, nonatomic, setter=setAdditionalProperties:, getter=additionalProperties) NSArray* additionalProperties;
@property (nonatomic, setter=setEssential:, getter=essential) BOOL essential;
@property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setSource:, getter=source) NSString* source;

@end
