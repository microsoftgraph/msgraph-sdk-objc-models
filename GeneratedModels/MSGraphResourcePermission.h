// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResourcePermission : MSObject

@property (nonnull, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nonnull, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
