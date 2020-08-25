// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIpRange.h"

@interface MSGraphIPv4CidrRange : MSGraphIpRange

@property (nonnull, nonatomic, setter=setCidrAddress:, getter=cidrAddress) NSString* cidrAddress;

@end
