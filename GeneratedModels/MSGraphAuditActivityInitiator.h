// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAppIdentity, MSGraphUserIdentity; 


#import "MSObject.h"

@interface MSGraphAuditActivityInitiator : MSObject

@property (nullable, nonatomic, setter=setApp:, getter=app) MSGraphAppIdentity* app;
@property (nullable, nonatomic, setter=setUser:, getter=user) MSGraphUserIdentity* user;

@end
