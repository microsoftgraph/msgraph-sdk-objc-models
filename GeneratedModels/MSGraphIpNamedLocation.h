// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIpRange; 


#import "MSGraphNamedLocation.h"

@interface MSGraphIpNamedLocation : MSGraphNamedLocation

  @property (nonnull, nonatomic, setter=setIpRanges:, getter=ipRanges) NSArray* ipRanges;
    @property (nonatomic, setter=setIsTrusted:, getter=isTrusted) BOOL isTrusted;
  
@end
