// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPhysicalAddress, MSGraphOutlookGeoCoordinates; 


#import "MSGraphEntity.h"

@interface MSGraphPlace : MSGraphEntity

  @property (nullable, nonatomic, setter=setAddress:, getter=address) MSGraphPhysicalAddress* address;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGeoCoordinates:, getter=geoCoordinates) MSGraphOutlookGeoCoordinates* geoCoordinates;
    @property (nullable, nonatomic, setter=setPhone:, getter=phone) NSString* phone;
  
@end
