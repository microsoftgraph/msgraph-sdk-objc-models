// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInitiatorType.h"


#import "MSGraphIdentity.h"

@interface MSGraphInitiator : MSGraphIdentity

@property (nullable, nonatomic, setter=setInitiatorType:, getter=initiatorType) MSGraphInitiatorType* initiatorType;

@end
