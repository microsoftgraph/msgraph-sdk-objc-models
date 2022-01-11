// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBookingStaffRole.h"

@interface MSGraphBookingStaffRole () {
    MSGraphBookingStaffRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBookingStaffRoleValue enumValue;
@end

@implementation MSGraphBookingStaffRole

+ (MSGraphBookingStaffRole*) guest {
    static MSGraphBookingStaffRole *_guest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _guest = [[MSGraphBookingStaffRole alloc] init];
        _guest.enumValue = MSGraphBookingStaffRoleGuest;
    });
    return _guest;
}
+ (MSGraphBookingStaffRole*) administrator {
    static MSGraphBookingStaffRole *_administrator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _administrator = [[MSGraphBookingStaffRole alloc] init];
        _administrator.enumValue = MSGraphBookingStaffRoleAdministrator;
    });
    return _administrator;
}
+ (MSGraphBookingStaffRole*) viewer {
    static MSGraphBookingStaffRole *_viewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _viewer = [[MSGraphBookingStaffRole alloc] init];
        _viewer.enumValue = MSGraphBookingStaffRoleViewer;
    });
    return _viewer;
}
+ (MSGraphBookingStaffRole*) externalGuest {
    static MSGraphBookingStaffRole *_externalGuest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalGuest = [[MSGraphBookingStaffRole alloc] init];
        _externalGuest.enumValue = MSGraphBookingStaffRoleExternalGuest;
    });
    return _externalGuest;
}
+ (MSGraphBookingStaffRole*) unknownFutureValue {
    static MSGraphBookingStaffRole *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphBookingStaffRole alloc] init];
        _unknownFutureValue.enumValue = MSGraphBookingStaffRoleUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphBookingStaffRole*) UnknownEnumValue {
    static MSGraphBookingStaffRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBookingStaffRole alloc] init];
        _unknownValue.enumValue = MSGraphBookingStaffRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBookingStaffRole*) bookingStaffRoleWithEnumValue:(MSGraphBookingStaffRoleValue)val {

    switch(val)
    {
        case MSGraphBookingStaffRoleGuest:
            return [MSGraphBookingStaffRole guest];
        case MSGraphBookingStaffRoleAdministrator:
            return [MSGraphBookingStaffRole administrator];
        case MSGraphBookingStaffRoleViewer:
            return [MSGraphBookingStaffRole viewer];
        case MSGraphBookingStaffRoleExternalGuest:
            return [MSGraphBookingStaffRole externalGuest];
        case MSGraphBookingStaffRoleUnknownFutureValue:
            return [MSGraphBookingStaffRole unknownFutureValue];
        case MSGraphBookingStaffRoleEndOfEnum:
        default:
            return [MSGraphBookingStaffRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBookingStaffRoleGuest:
            return @"guest";
        case MSGraphBookingStaffRoleAdministrator:
            return @"administrator";
        case MSGraphBookingStaffRoleViewer:
            return @"viewer";
        case MSGraphBookingStaffRoleExternalGuest:
            return @"externalGuest";
        case MSGraphBookingStaffRoleUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphBookingStaffRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBookingStaffRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBookingStaffRole)

- (MSGraphBookingStaffRole*) toMSGraphBookingStaffRole{

    if([self isEqualToString:@"guest"])
    {
          return [MSGraphBookingStaffRole guest];
    }
    else if([self isEqualToString:@"administrator"])
    {
          return [MSGraphBookingStaffRole administrator];
    }
    else if([self isEqualToString:@"viewer"])
    {
          return [MSGraphBookingStaffRole viewer];
    }
    else if([self isEqualToString:@"externalGuest"])
    {
          return [MSGraphBookingStaffRole externalGuest];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphBookingStaffRole unknownFutureValue];
    }
    else {
        return [MSGraphBookingStaffRole UnknownEnumValue];
    }
}

@end
