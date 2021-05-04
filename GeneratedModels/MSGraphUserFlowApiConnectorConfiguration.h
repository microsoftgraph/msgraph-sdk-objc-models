// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentityApiConnector; 


#import "MSObject.h"

@interface MSGraphUserFlowApiConnectorConfiguration : MSObject

@property (nullable, nonatomic, setter=setPostAttributeCollection:, getter=postAttributeCollection) MSGraphIdentityApiConnector* postAttributeCollection;
@property (nullable, nonatomic, setter=setPostFederationSignup:, getter=postFederationSignup) MSGraphIdentityApiConnector* postFederationSignup;

@end
