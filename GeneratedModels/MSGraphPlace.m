// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlace()
{
    NSString* _displayName;
    MSGraphOutlookGeoCoordinates* _geoCoordinates;
    NSString* _phone;
    MSGraphPhysicalAddress* _address;
}
@end

@implementation MSGraphPlace

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphOutlookGeoCoordinates*) geoCoordinates
{
    if(!_geoCoordinates){
        _geoCoordinates = [[MSGraphOutlookGeoCoordinates alloc] initWithDictionary: self.dictionary[@"geoCoordinates"]];
    }
    return _geoCoordinates;
}

- (void) setGeoCoordinates: (MSGraphOutlookGeoCoordinates*) val
{
    _geoCoordinates = val;
    self.dictionary[@"geoCoordinates"] = val;
}

- (NSString*) phone
{
    if([[NSNull null] isEqual:self.dictionary[@"phone"]])
    {
        return nil;
    }   
    return self.dictionary[@"phone"];
}

- (void) setPhone: (NSString*) val
{
    self.dictionary[@"phone"] = val;
}

- (MSGraphPhysicalAddress*) address
{
    if(!_address){
        _address = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"address"]];
    }
    return _address;
}

- (void) setAddress: (MSGraphPhysicalAddress*) val
{
    _address = val;
    self.dictionary[@"address"] = val;
}


@end
