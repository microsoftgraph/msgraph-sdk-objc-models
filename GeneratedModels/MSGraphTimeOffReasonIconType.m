// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTimeOffReasonIconType.h"

@interface MSGraphTimeOffReasonIconType () {
    MSGraphTimeOffReasonIconTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTimeOffReasonIconTypeValue enumValue;
@end

@implementation MSGraphTimeOffReasonIconType

+ (MSGraphTimeOffReasonIconType*) none {
    static MSGraphTimeOffReasonIconType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphTimeOffReasonIconType alloc] init];
        _none.enumValue = MSGraphTimeOffReasonIconTypeNone;
    });
    return _none;
}
+ (MSGraphTimeOffReasonIconType*) car {
    static MSGraphTimeOffReasonIconType *_car;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _car = [[MSGraphTimeOffReasonIconType alloc] init];
        _car.enumValue = MSGraphTimeOffReasonIconTypeCar;
    });
    return _car;
}
+ (MSGraphTimeOffReasonIconType*) calendar {
    static MSGraphTimeOffReasonIconType *_calendar;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _calendar = [[MSGraphTimeOffReasonIconType alloc] init];
        _calendar.enumValue = MSGraphTimeOffReasonIconTypeCalendar;
    });
    return _calendar;
}
+ (MSGraphTimeOffReasonIconType*) running {
    static MSGraphTimeOffReasonIconType *_running;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _running = [[MSGraphTimeOffReasonIconType alloc] init];
        _running.enumValue = MSGraphTimeOffReasonIconTypeRunning;
    });
    return _running;
}
+ (MSGraphTimeOffReasonIconType*) plane {
    static MSGraphTimeOffReasonIconType *_plane;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _plane = [[MSGraphTimeOffReasonIconType alloc] init];
        _plane.enumValue = MSGraphTimeOffReasonIconTypePlane;
    });
    return _plane;
}
+ (MSGraphTimeOffReasonIconType*) firstAid {
    static MSGraphTimeOffReasonIconType *_firstAid;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _firstAid = [[MSGraphTimeOffReasonIconType alloc] init];
        _firstAid.enumValue = MSGraphTimeOffReasonIconTypeFirstAid;
    });
    return _firstAid;
}
+ (MSGraphTimeOffReasonIconType*) doctor {
    static MSGraphTimeOffReasonIconType *_doctor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doctor = [[MSGraphTimeOffReasonIconType alloc] init];
        _doctor.enumValue = MSGraphTimeOffReasonIconTypeDoctor;
    });
    return _doctor;
}
+ (MSGraphTimeOffReasonIconType*) notWorking {
    static MSGraphTimeOffReasonIconType *_notWorking;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notWorking = [[MSGraphTimeOffReasonIconType alloc] init];
        _notWorking.enumValue = MSGraphTimeOffReasonIconTypeNotWorking;
    });
    return _notWorking;
}
+ (MSGraphTimeOffReasonIconType*) clock {
    static MSGraphTimeOffReasonIconType *_clock;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clock = [[MSGraphTimeOffReasonIconType alloc] init];
        _clock.enumValue = MSGraphTimeOffReasonIconTypeClock;
    });
    return _clock;
}
+ (MSGraphTimeOffReasonIconType*) juryDuty {
    static MSGraphTimeOffReasonIconType *_juryDuty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _juryDuty = [[MSGraphTimeOffReasonIconType alloc] init];
        _juryDuty.enumValue = MSGraphTimeOffReasonIconTypeJuryDuty;
    });
    return _juryDuty;
}
+ (MSGraphTimeOffReasonIconType*) globe {
    static MSGraphTimeOffReasonIconType *_globe;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _globe = [[MSGraphTimeOffReasonIconType alloc] init];
        _globe.enumValue = MSGraphTimeOffReasonIconTypeGlobe;
    });
    return _globe;
}
+ (MSGraphTimeOffReasonIconType*) cup {
    static MSGraphTimeOffReasonIconType *_cup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cup = [[MSGraphTimeOffReasonIconType alloc] init];
        _cup.enumValue = MSGraphTimeOffReasonIconTypeCup;
    });
    return _cup;
}
+ (MSGraphTimeOffReasonIconType*) phone {
    static MSGraphTimeOffReasonIconType *_phone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _phone = [[MSGraphTimeOffReasonIconType alloc] init];
        _phone.enumValue = MSGraphTimeOffReasonIconTypePhone;
    });
    return _phone;
}
+ (MSGraphTimeOffReasonIconType*) weather {
    static MSGraphTimeOffReasonIconType *_weather;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _weather = [[MSGraphTimeOffReasonIconType alloc] init];
        _weather.enumValue = MSGraphTimeOffReasonIconTypeWeather;
    });
    return _weather;
}
+ (MSGraphTimeOffReasonIconType*) umbrella {
    static MSGraphTimeOffReasonIconType *_umbrella;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _umbrella = [[MSGraphTimeOffReasonIconType alloc] init];
        _umbrella.enumValue = MSGraphTimeOffReasonIconTypeUmbrella;
    });
    return _umbrella;
}
+ (MSGraphTimeOffReasonIconType*) piggyBank {
    static MSGraphTimeOffReasonIconType *_piggyBank;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _piggyBank = [[MSGraphTimeOffReasonIconType alloc] init];
        _piggyBank.enumValue = MSGraphTimeOffReasonIconTypePiggyBank;
    });
    return _piggyBank;
}
+ (MSGraphTimeOffReasonIconType*) dog {
    static MSGraphTimeOffReasonIconType *_dog;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dog = [[MSGraphTimeOffReasonIconType alloc] init];
        _dog.enumValue = MSGraphTimeOffReasonIconTypeDog;
    });
    return _dog;
}
+ (MSGraphTimeOffReasonIconType*) cake {
    static MSGraphTimeOffReasonIconType *_cake;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cake = [[MSGraphTimeOffReasonIconType alloc] init];
        _cake.enumValue = MSGraphTimeOffReasonIconTypeCake;
    });
    return _cake;
}
+ (MSGraphTimeOffReasonIconType*) trafficCone {
    static MSGraphTimeOffReasonIconType *_trafficCone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _trafficCone = [[MSGraphTimeOffReasonIconType alloc] init];
        _trafficCone.enumValue = MSGraphTimeOffReasonIconTypeTrafficCone;
    });
    return _trafficCone;
}
+ (MSGraphTimeOffReasonIconType*) pin {
    static MSGraphTimeOffReasonIconType *_pin;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pin = [[MSGraphTimeOffReasonIconType alloc] init];
        _pin.enumValue = MSGraphTimeOffReasonIconTypePin;
    });
    return _pin;
}
+ (MSGraphTimeOffReasonIconType*) sunny {
    static MSGraphTimeOffReasonIconType *_sunny;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sunny = [[MSGraphTimeOffReasonIconType alloc] init];
        _sunny.enumValue = MSGraphTimeOffReasonIconTypeSunny;
    });
    return _sunny;
}
+ (MSGraphTimeOffReasonIconType*) unknownFutureValue {
    static MSGraphTimeOffReasonIconType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTimeOffReasonIconType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTimeOffReasonIconTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTimeOffReasonIconType*) UnknownEnumValue {
    static MSGraphTimeOffReasonIconType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTimeOffReasonIconType alloc] init];
        _unknownValue.enumValue = MSGraphTimeOffReasonIconTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTimeOffReasonIconType*) timeOffReasonIconTypeWithEnumValue:(MSGraphTimeOffReasonIconTypeValue)val {

    switch(val)
    {
        case MSGraphTimeOffReasonIconTypeNone:
            return [MSGraphTimeOffReasonIconType none];
        case MSGraphTimeOffReasonIconTypeCar:
            return [MSGraphTimeOffReasonIconType car];
        case MSGraphTimeOffReasonIconTypeCalendar:
            return [MSGraphTimeOffReasonIconType calendar];
        case MSGraphTimeOffReasonIconTypeRunning:
            return [MSGraphTimeOffReasonIconType running];
        case MSGraphTimeOffReasonIconTypePlane:
            return [MSGraphTimeOffReasonIconType plane];
        case MSGraphTimeOffReasonIconTypeFirstAid:
            return [MSGraphTimeOffReasonIconType firstAid];
        case MSGraphTimeOffReasonIconTypeDoctor:
            return [MSGraphTimeOffReasonIconType doctor];
        case MSGraphTimeOffReasonIconTypeNotWorking:
            return [MSGraphTimeOffReasonIconType notWorking];
        case MSGraphTimeOffReasonIconTypeClock:
            return [MSGraphTimeOffReasonIconType clock];
        case MSGraphTimeOffReasonIconTypeJuryDuty:
            return [MSGraphTimeOffReasonIconType juryDuty];
        case MSGraphTimeOffReasonIconTypeGlobe:
            return [MSGraphTimeOffReasonIconType globe];
        case MSGraphTimeOffReasonIconTypeCup:
            return [MSGraphTimeOffReasonIconType cup];
        case MSGraphTimeOffReasonIconTypePhone:
            return [MSGraphTimeOffReasonIconType phone];
        case MSGraphTimeOffReasonIconTypeWeather:
            return [MSGraphTimeOffReasonIconType weather];
        case MSGraphTimeOffReasonIconTypeUmbrella:
            return [MSGraphTimeOffReasonIconType umbrella];
        case MSGraphTimeOffReasonIconTypePiggyBank:
            return [MSGraphTimeOffReasonIconType piggyBank];
        case MSGraphTimeOffReasonIconTypeDog:
            return [MSGraphTimeOffReasonIconType dog];
        case MSGraphTimeOffReasonIconTypeCake:
            return [MSGraphTimeOffReasonIconType cake];
        case MSGraphTimeOffReasonIconTypeTrafficCone:
            return [MSGraphTimeOffReasonIconType trafficCone];
        case MSGraphTimeOffReasonIconTypePin:
            return [MSGraphTimeOffReasonIconType pin];
        case MSGraphTimeOffReasonIconTypeSunny:
            return [MSGraphTimeOffReasonIconType sunny];
        case MSGraphTimeOffReasonIconTypeUnknownFutureValue:
            return [MSGraphTimeOffReasonIconType unknownFutureValue];
        case MSGraphTimeOffReasonIconTypeEndOfEnum:
        default:
            return [MSGraphTimeOffReasonIconType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTimeOffReasonIconTypeNone:
            return @"none";
        case MSGraphTimeOffReasonIconTypeCar:
            return @"car";
        case MSGraphTimeOffReasonIconTypeCalendar:
            return @"calendar";
        case MSGraphTimeOffReasonIconTypeRunning:
            return @"running";
        case MSGraphTimeOffReasonIconTypePlane:
            return @"plane";
        case MSGraphTimeOffReasonIconTypeFirstAid:
            return @"firstAid";
        case MSGraphTimeOffReasonIconTypeDoctor:
            return @"doctor";
        case MSGraphTimeOffReasonIconTypeNotWorking:
            return @"notWorking";
        case MSGraphTimeOffReasonIconTypeClock:
            return @"clock";
        case MSGraphTimeOffReasonIconTypeJuryDuty:
            return @"juryDuty";
        case MSGraphTimeOffReasonIconTypeGlobe:
            return @"globe";
        case MSGraphTimeOffReasonIconTypeCup:
            return @"cup";
        case MSGraphTimeOffReasonIconTypePhone:
            return @"phone";
        case MSGraphTimeOffReasonIconTypeWeather:
            return @"weather";
        case MSGraphTimeOffReasonIconTypeUmbrella:
            return @"umbrella";
        case MSGraphTimeOffReasonIconTypePiggyBank:
            return @"piggyBank";
        case MSGraphTimeOffReasonIconTypeDog:
            return @"dog";
        case MSGraphTimeOffReasonIconTypeCake:
            return @"cake";
        case MSGraphTimeOffReasonIconTypeTrafficCone:
            return @"trafficCone";
        case MSGraphTimeOffReasonIconTypePin:
            return @"pin";
        case MSGraphTimeOffReasonIconTypeSunny:
            return @"sunny";
        case MSGraphTimeOffReasonIconTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTimeOffReasonIconTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTimeOffReasonIconTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTimeOffReasonIconType)

- (MSGraphTimeOffReasonIconType*) toMSGraphTimeOffReasonIconType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphTimeOffReasonIconType none];
    }
    else if([self isEqualToString:@"car"])
    {
          return [MSGraphTimeOffReasonIconType car];
    }
    else if([self isEqualToString:@"calendar"])
    {
          return [MSGraphTimeOffReasonIconType calendar];
    }
    else if([self isEqualToString:@"running"])
    {
          return [MSGraphTimeOffReasonIconType running];
    }
    else if([self isEqualToString:@"plane"])
    {
          return [MSGraphTimeOffReasonIconType plane];
    }
    else if([self isEqualToString:@"firstAid"])
    {
          return [MSGraphTimeOffReasonIconType firstAid];
    }
    else if([self isEqualToString:@"doctor"])
    {
          return [MSGraphTimeOffReasonIconType doctor];
    }
    else if([self isEqualToString:@"notWorking"])
    {
          return [MSGraphTimeOffReasonIconType notWorking];
    }
    else if([self isEqualToString:@"clock"])
    {
          return [MSGraphTimeOffReasonIconType clock];
    }
    else if([self isEqualToString:@"juryDuty"])
    {
          return [MSGraphTimeOffReasonIconType juryDuty];
    }
    else if([self isEqualToString:@"globe"])
    {
          return [MSGraphTimeOffReasonIconType globe];
    }
    else if([self isEqualToString:@"cup"])
    {
          return [MSGraphTimeOffReasonIconType cup];
    }
    else if([self isEqualToString:@"phone"])
    {
          return [MSGraphTimeOffReasonIconType phone];
    }
    else if([self isEqualToString:@"weather"])
    {
          return [MSGraphTimeOffReasonIconType weather];
    }
    else if([self isEqualToString:@"umbrella"])
    {
          return [MSGraphTimeOffReasonIconType umbrella];
    }
    else if([self isEqualToString:@"piggyBank"])
    {
          return [MSGraphTimeOffReasonIconType piggyBank];
    }
    else if([self isEqualToString:@"dog"])
    {
          return [MSGraphTimeOffReasonIconType dog];
    }
    else if([self isEqualToString:@"cake"])
    {
          return [MSGraphTimeOffReasonIconType cake];
    }
    else if([self isEqualToString:@"trafficCone"])
    {
          return [MSGraphTimeOffReasonIconType trafficCone];
    }
    else if([self isEqualToString:@"pin"])
    {
          return [MSGraphTimeOffReasonIconType pin];
    }
    else if([self isEqualToString:@"sunny"])
    {
          return [MSGraphTimeOffReasonIconType sunny];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTimeOffReasonIconType unknownFutureValue];
    }
    else {
        return [MSGraphTimeOffReasonIconType UnknownEnumValue];
    }
}

@end
