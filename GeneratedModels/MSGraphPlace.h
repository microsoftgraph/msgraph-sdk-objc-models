// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOutlookGeoCoordinates, MSGraphPhysicalAddress; 


#import "MSGraphEntity.h"

@interface MSGraphPlace : MSGraphEntity

  @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGeoCoordinates:, getter=geoCoordinates) MSGraphOutlookGeoCoordinates* geoCoordinates;
    @property (nullable, nonatomic, setter=setPhone:, getter=phone) NSString* phone;
    @property (nullable, nonatomic, setter=setAddress:, getter=address) MSGraphPhysicalAddress* address;
  
@end
