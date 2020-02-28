// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResourceAccess; 


#import "MSObject.h"

@interface MSGraphRequiredResourceAccess : MSObject

@property (nonnull, nonatomic, setter=setResourceAppId:, getter=resourceAppId) NSString* resourceAppId;
@property (nonnull, nonatomic, setter=setResourceAccess:, getter=resourceAccess) NSArray* resourceAccess;

@end
