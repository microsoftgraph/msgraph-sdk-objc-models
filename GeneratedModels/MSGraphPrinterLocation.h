// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPrinterLocation : MSObject

@property (nonatomic, setter=setAltitudeInMeters:, getter=altitudeInMeters) int32_t altitudeInMeters;
@property (nullable, nonatomic, setter=setBuilding:, getter=building) NSString* building;
@property (nullable, nonatomic, setter=setCity:, getter=city) NSString* city;
@property (nullable, nonatomic, setter=setCountryOrRegion:, getter=countryOrRegion) NSString* countryOrRegion;
@property (nullable, nonatomic, setter=setFloor:, getter=floor) NSString* floor;
@property (nullable, nonatomic, setter=setFloorDescription:, getter=floorDescription) NSString* floorDescription;
@property (nonatomic, setter=setLatitude:, getter=latitude) double latitude;
@property (nonatomic, setter=setLongitude:, getter=longitude) double longitude;
@property (nullable, nonatomic, setter=setOrganization:, getter=organization) NSArray* organization;
@property (nullable, nonatomic, setter=setPostalCode:, getter=postalCode) NSString* postalCode;
@property (nullable, nonatomic, setter=setRoomDescription:, getter=roomDescription) NSString* roomDescription;
@property (nullable, nonatomic, setter=setRoomName:, getter=roomName) NSString* roomName;
@property (nullable, nonatomic, setter=setSite:, getter=site) NSString* site;
@property (nullable, nonatomic, setter=setStateOrProvince:, getter=stateOrProvince) NSString* stateOrProvince;
@property (nullable, nonatomic, setter=setStreetAddress:, getter=streetAddress) NSString* streetAddress;
@property (nullable, nonatomic, setter=setSubdivision:, getter=subdivision) NSArray* subdivision;
@property (nullable, nonatomic, setter=setSubunit:, getter=subunit) NSArray* subunit;

@end
