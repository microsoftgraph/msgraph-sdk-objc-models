// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBodyType.h"


#import "MSObject.h"

@interface MSGraphEducationItemBody : MSObject

@property (nullable, nonatomic, setter=setContent:, getter=content) NSString* content;
@property (nullable, nonatomic, setter=setContentType:, getter=contentType) MSGraphBodyType* contentType;

@end
