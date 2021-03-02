// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterLocation()
{
    int32_t _altitudeInMeters;
    NSString* _building;
    NSString* _city;
    NSString* _countryOrRegion;
    NSString* _floor;
    NSString* _floorDescription;
    double _latitude;
    double _longitude;
    NSArray* _organization;
    NSString* _postalCode;
    NSString* _roomDescription;
    NSString* _roomName;
    NSString* _site;
    NSString* _stateOrProvince;
    NSString* _streetAddress;
    NSArray* _subdivision;
    NSArray* _subunit;
}
@end

@implementation MSGraphPrinterLocation

- (int32_t) altitudeInMeters
{
    _altitudeInMeters = [self.dictionary[@"altitudeInMeters"] intValue];
    return _altitudeInMeters;
}

- (void) setAltitudeInMeters: (int32_t) val
{
    _altitudeInMeters = val;
    self.dictionary[@"altitudeInMeters"] = @(val);
}

- (NSString*) building
{
    if([[NSNull null] isEqual:self.dictionary[@"building"]])
    {
        return nil;
    }   
    return self.dictionary[@"building"];
}

- (void) setBuilding: (NSString*) val
{
    self.dictionary[@"building"] = val;
}

- (NSString*) city
{
    if([[NSNull null] isEqual:self.dictionary[@"city"]])
    {
        return nil;
    }   
    return self.dictionary[@"city"];
}

- (void) setCity: (NSString*) val
{
    self.dictionary[@"city"] = val;
}

- (NSString*) countryOrRegion
{
    if([[NSNull null] isEqual:self.dictionary[@"countryOrRegion"]])
    {
        return nil;
    }   
    return self.dictionary[@"countryOrRegion"];
}

- (void) setCountryOrRegion: (NSString*) val
{
    self.dictionary[@"countryOrRegion"] = val;
}

- (NSString*) floor
{
    if([[NSNull null] isEqual:self.dictionary[@"floor"]])
    {
        return nil;
    }   
    return self.dictionary[@"floor"];
}

- (void) setFloor: (NSString*) val
{
    self.dictionary[@"floor"] = val;
}

- (NSString*) floorDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"floorDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"floorDescription"];
}

- (void) setFloorDescription: (NSString*) val
{
    self.dictionary[@"floorDescription"] = val;
}

- (double) latitude
{
    _latitude = [self.dictionary[@"latitude"] floatValue];
    return _latitude;
}

- (void) setLatitude: (double) val
{
    _latitude = val;
    self.dictionary[@"latitude"] = @(val);
}

- (double) longitude
{
    _longitude = [self.dictionary[@"longitude"] floatValue];
    return _longitude;
}

- (void) setLongitude: (double) val
{
    _longitude = val;
    self.dictionary[@"longitude"] = @(val);
}

- (NSArray*) organization
{
    if([[NSNull null] isEqual:self.dictionary[@"organization"]])
    {
        return nil;
    }   
    return self.dictionary[@"organization"];
}

- (void) setOrganization: (NSArray*) val
{
    self.dictionary[@"organization"] = val;
}

- (NSString*) postalCode
{
    if([[NSNull null] isEqual:self.dictionary[@"postalCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"postalCode"];
}

- (void) setPostalCode: (NSString*) val
{
    self.dictionary[@"postalCode"] = val;
}

- (NSString*) roomDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"roomDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"roomDescription"];
}

- (void) setRoomDescription: (NSString*) val
{
    self.dictionary[@"roomDescription"] = val;
}

- (NSString*) roomName
{
    if([[NSNull null] isEqual:self.dictionary[@"roomName"]])
    {
        return nil;
    }   
    return self.dictionary[@"roomName"];
}

- (void) setRoomName: (NSString*) val
{
    self.dictionary[@"roomName"] = val;
}

- (NSString*) site
{
    if([[NSNull null] isEqual:self.dictionary[@"site"]])
    {
        return nil;
    }   
    return self.dictionary[@"site"];
}

- (void) setSite: (NSString*) val
{
    self.dictionary[@"site"] = val;
}

- (NSString*) stateOrProvince
{
    if([[NSNull null] isEqual:self.dictionary[@"stateOrProvince"]])
    {
        return nil;
    }   
    return self.dictionary[@"stateOrProvince"];
}

- (void) setStateOrProvince: (NSString*) val
{
    self.dictionary[@"stateOrProvince"] = val;
}

- (NSString*) streetAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"streetAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"streetAddress"];
}

- (void) setStreetAddress: (NSString*) val
{
    self.dictionary[@"streetAddress"] = val;
}

- (NSArray*) subdivision
{
    if([[NSNull null] isEqual:self.dictionary[@"subdivision"]])
    {
        return nil;
    }   
    return self.dictionary[@"subdivision"];
}

- (void) setSubdivision: (NSArray*) val
{
    self.dictionary[@"subdivision"] = val;
}

- (NSArray*) subunit
{
    if([[NSNull null] isEqual:self.dictionary[@"subunit"]])
    {
        return nil;
    }   
    return self.dictionary[@"subunit"];
}

- (void) setSubunit: (NSArray*) val
{
    self.dictionary[@"subunit"] = val;
}

@end
