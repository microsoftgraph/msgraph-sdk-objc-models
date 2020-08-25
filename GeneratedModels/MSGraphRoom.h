// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphBookingType.h"


#import "MSGraphPlace.h"

@interface MSGraphRoom : MSGraphPlace

  @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
    @property (nonnull, nonatomic, setter=setNickname:, getter=nickname) NSString* nickname;
    @property (nullable, nonatomic, setter=setBuilding:, getter=building) NSString* building;
    @property (nonatomic, setter=setFloorNumber:, getter=floorNumber) int32_t floorNumber;
    @property (nullable, nonatomic, setter=setLabel:, getter=label) NSString* label;
    @property (nonatomic, setter=setCapacity:, getter=capacity) int32_t capacity;
    @property (nullable, nonatomic, setter=setBookingType:, getter=bookingType) MSGraphBookingType* bookingType;
    @property (nullable, nonatomic, setter=setAudioDeviceName:, getter=audioDeviceName) NSString* audioDeviceName;
    @property (nullable, nonatomic, setter=setVideoDeviceName:, getter=videoDeviceName) NSString* videoDeviceName;
    @property (nullable, nonatomic, setter=setDisplayDeviceName:, getter=displayDeviceName) NSString* displayDeviceName;
    @property (nonatomic, setter=setIsWheelChairAccessible:, getter=isWheelChairAccessible) BOOL isWheelChairAccessible;
    @property (nullable, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setFloorLabel:, getter=floorLabel) NSString* floorLabel;
  
@end
