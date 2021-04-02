// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDetailsInfo; 


#import "MSGraphIdentity.h"

@interface MSGraphProvisioningSystem : MSGraphIdentity

@property (nullable, nonatomic, setter=setDetails:, getter=details) MSGraphDetailsInfo* details;

@end
