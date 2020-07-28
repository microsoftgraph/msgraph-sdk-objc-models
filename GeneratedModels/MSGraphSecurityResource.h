// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSecurityResourceType.h"


#import "MSObject.h"

@interface MSGraphSecurityResource : MSObject

@property (nullable, nonatomic, setter=setResource:, getter=resource) NSString* resource;
@property (nullable, nonatomic, setter=setResourceType:, getter=resourceType) MSGraphSecurityResourceType* resourceType;

@end
