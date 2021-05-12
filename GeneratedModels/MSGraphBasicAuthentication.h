// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphApiAuthenticationConfigurationBase.h"

@interface MSGraphBasicAuthentication : MSGraphApiAuthenticationConfigurationBase

@property (nullable, nonatomic, setter=setPassword:, getter=password) NSString* password;
@property (nullable, nonatomic, setter=setUsername:, getter=username) NSString* username;

@end
