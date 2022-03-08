// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDataSubject : MSObject

@property (nullable, nonatomic, setter=setEmail:, getter=email) NSString* email;
@property (nullable, nonatomic, setter=setFirstName:, getter=firstName) NSString* firstName;
@property (nullable, nonatomic, setter=setLastName:, getter=lastName) NSString* lastName;
@property (nullable, nonatomic, setter=setResidency:, getter=residency) NSString* residency;

@end
