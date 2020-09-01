// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPublicErrorDetail, MSGraphPublicInnerError; 


#import "MSObject.h"

@interface MSGraphPublicError : MSObject

@property (nullable, nonatomic, setter=setCode:, getter=code) NSString* code;
@property (nullable, nonatomic, setter=setDetails:, getter=details) NSArray* details;
@property (nullable, nonatomic, setter=setInnerError:, getter=innerError) MSGraphPublicInnerError* innerError;
@property (nullable, nonatomic, setter=setMessage:, getter=message) NSString* message;
@property (nullable, nonatomic, setter=setTarget:, getter=target) NSString* target;

@end
