// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphImplicitGrantSettings : MSObject

@property (nonatomic, setter=setEnableAccessTokenIssuance:, getter=enableAccessTokenIssuance) BOOL enableAccessTokenIssuance;
@property (nonatomic, setter=setEnableIdTokenIssuance:, getter=enableIdTokenIssuance) BOOL enableIdTokenIssuance;

@end
