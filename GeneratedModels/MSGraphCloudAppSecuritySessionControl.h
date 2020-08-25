// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCloudAppSecuritySessionControlType.h"


#import "MSGraphConditionalAccessSessionControl.h"

@interface MSGraphCloudAppSecuritySessionControl : MSGraphConditionalAccessSessionControl

@property (nullable, nonatomic, setter=setCloudAppSecurityType:, getter=cloudAppSecurityType) MSGraphCloudAppSecuritySessionControlType* cloudAppSecurityType;

@end
