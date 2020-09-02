// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSigninFrequencyType.h"


#import "MSGraphConditionalAccessSessionControl.h"

@interface MSGraphSignInFrequencySessionControl : MSGraphConditionalAccessSessionControl

@property (nullable, nonatomic, setter=setType:, getter=type) MSGraphSigninFrequencyType* type;
@property (nonatomic, setter=setValue:, getter=value) int32_t value;

@end
