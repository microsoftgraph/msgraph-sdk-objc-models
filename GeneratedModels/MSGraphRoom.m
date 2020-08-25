// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRoom()
{
    NSString* _emailAddress;
    NSString* _nickname;
    NSString* _building;
    int32_t _floorNumber;
    NSString* _label;
    int32_t _capacity;
    MSGraphBookingType* _bookingType;
    NSString* _audioDeviceName;
    NSString* _videoDeviceName;
    NSString* _displayDeviceName;
    BOOL _isWheelChairAccessible;
    NSArray* _tags;
    NSString* _floorLabel;
}
@end

@implementation MSGraphRoom

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.room";
    }
    return self;
}
- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSString*) nickname
{
    return self.dictionary[@"nickname"];
}

- (void) setNickname: (NSString*) val
{
    self.dictionary[@"nickname"] = val;
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

- (int32_t) floorNumber
{
    _floorNumber = [self.dictionary[@"floorNumber"] intValue];
    return _floorNumber;
}

- (void) setFloorNumber: (int32_t) val
{
    _floorNumber = val;
    self.dictionary[@"floorNumber"] = @(val);
}

- (NSString*) label
{
    if([[NSNull null] isEqual:self.dictionary[@"label"]])
    {
        return nil;
    }   
    return self.dictionary[@"label"];
}

- (void) setLabel: (NSString*) val
{
    self.dictionary[@"label"] = val;
}

- (int32_t) capacity
{
    _capacity = [self.dictionary[@"capacity"] intValue];
    return _capacity;
}

- (void) setCapacity: (int32_t) val
{
    _capacity = val;
    self.dictionary[@"capacity"] = @(val);
}

- (MSGraphBookingType*) bookingType
{
    if(!_bookingType){
        _bookingType = [self.dictionary[@"bookingType"] toMSGraphBookingType];
    }
    return _bookingType;
}

- (void) setBookingType: (MSGraphBookingType*) val
{
    _bookingType = val;
    self.dictionary[@"bookingType"] = val;
}

- (NSString*) audioDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"audioDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"audioDeviceName"];
}

- (void) setAudioDeviceName: (NSString*) val
{
    self.dictionary[@"audioDeviceName"] = val;
}

- (NSString*) videoDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"videoDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"videoDeviceName"];
}

- (void) setVideoDeviceName: (NSString*) val
{
    self.dictionary[@"videoDeviceName"] = val;
}

- (NSString*) displayDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayDeviceName"];
}

- (void) setDisplayDeviceName: (NSString*) val
{
    self.dictionary[@"displayDeviceName"] = val;
}

- (BOOL) isWheelChairAccessible
{
    _isWheelChairAccessible = [self.dictionary[@"isWheelChairAccessible"] boolValue];
    return _isWheelChairAccessible;
}

- (void) setIsWheelChairAccessible: (BOOL) val
{
    _isWheelChairAccessible = val;
    self.dictionary[@"isWheelChairAccessible"] = @(val);
}

- (NSArray*) tags
{
    if([[NSNull null] isEqual:self.dictionary[@"tags"]])
    {
        return nil;
    }   
    return self.dictionary[@"tags"];
}

- (void) setTags: (NSArray*) val
{
    self.dictionary[@"tags"] = val;
}

- (NSString*) floorLabel
{
    if([[NSNull null] isEqual:self.dictionary[@"floorLabel"]])
    {
        return nil;
    }   
    return self.dictionary[@"floorLabel"];
}

- (void) setFloorLabel: (NSString*) val
{
    self.dictionary[@"floorLabel"] = val;
}


@end
