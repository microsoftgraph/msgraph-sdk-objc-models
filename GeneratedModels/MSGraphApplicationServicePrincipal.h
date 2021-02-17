// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphApplication, MSGraphServicePrincipal; 


#import "MSObject.h"

@interface MSGraphApplicationServicePrincipal : MSObject

@property (nullable, nonatomic, setter=setApplication:, getter=application) MSGraphApplication* application;
@property (nullable, nonatomic, setter=setServicePrincipal:, getter=servicePrincipal) MSGraphServicePrincipal* servicePrincipal;

@end
