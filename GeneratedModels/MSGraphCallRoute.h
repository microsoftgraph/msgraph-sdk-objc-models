// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphRoutingType.h"


#import "MSObject.h"

@interface MSGraphCallRoute : MSObject

@property (nonnull, nonatomic, setter=setFinal:, getter=final) MSGraphIdentitySet* final;
@property (nonnull, nonatomic, setter=setOriginal:, getter=original) MSGraphIdentitySet* original;
@property (nonnull, nonatomic, setter=setRoutingType:, getter=routingType) MSGraphRoutingType* routingType;

@end
