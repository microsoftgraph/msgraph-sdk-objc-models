// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUserAttributeValuesItem : MSObject

@property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
