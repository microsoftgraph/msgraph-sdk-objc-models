// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphResultInfo : MSObject

@property (nonatomic, setter=setCode:, getter=code) int32_t code;
@property (nullable, nonatomic, setter=setMessage:, getter=message) NSString* message;
@property (nonatomic, setter=setSubcode:, getter=subcode) int32_t subcode;

@end
