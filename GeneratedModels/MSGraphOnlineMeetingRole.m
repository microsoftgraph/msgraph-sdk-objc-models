// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnlineMeetingRole.h"

@interface MSGraphOnlineMeetingRole () {
    MSGraphOnlineMeetingRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnlineMeetingRoleValue enumValue;
@end

@implementation MSGraphOnlineMeetingRole

+ (MSGraphOnlineMeetingRole*) attendee {
    static MSGraphOnlineMeetingRole *_attendee;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _attendee = [[MSGraphOnlineMeetingRole alloc] init];
        _attendee.enumValue = MSGraphOnlineMeetingRoleAttendee;
    });
    return _attendee;
}
+ (MSGraphOnlineMeetingRole*) presenter {
    static MSGraphOnlineMeetingRole *_presenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _presenter = [[MSGraphOnlineMeetingRole alloc] init];
        _presenter.enumValue = MSGraphOnlineMeetingRolePresenter;
    });
    return _presenter;
}
+ (MSGraphOnlineMeetingRole*) unknownFutureValue {
    static MSGraphOnlineMeetingRole *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphOnlineMeetingRole alloc] init];
        _unknownFutureValue.enumValue = MSGraphOnlineMeetingRoleUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphOnlineMeetingRole*) UnknownEnumValue {
    static MSGraphOnlineMeetingRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnlineMeetingRole alloc] init];
        _unknownValue.enumValue = MSGraphOnlineMeetingRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnlineMeetingRole*) onlineMeetingRoleWithEnumValue:(MSGraphOnlineMeetingRoleValue)val {

    switch(val)
    {
        case MSGraphOnlineMeetingRoleAttendee:
            return [MSGraphOnlineMeetingRole attendee];
        case MSGraphOnlineMeetingRolePresenter:
            return [MSGraphOnlineMeetingRole presenter];
        case MSGraphOnlineMeetingRoleUnknownFutureValue:
            return [MSGraphOnlineMeetingRole unknownFutureValue];
        case MSGraphOnlineMeetingRoleEndOfEnum:
        default:
            return [MSGraphOnlineMeetingRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnlineMeetingRoleAttendee:
            return @"attendee";
        case MSGraphOnlineMeetingRolePresenter:
            return @"presenter";
        case MSGraphOnlineMeetingRoleUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphOnlineMeetingRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnlineMeetingRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnlineMeetingRole)

- (MSGraphOnlineMeetingRole*) toMSGraphOnlineMeetingRole{

    if([self isEqualToString:@"attendee"])
    {
          return [MSGraphOnlineMeetingRole attendee];
    }
    else if([self isEqualToString:@"presenter"])
    {
          return [MSGraphOnlineMeetingRole presenter];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphOnlineMeetingRole unknownFutureValue];
    }
    else {
        return [MSGraphOnlineMeetingRole UnknownEnumValue];
    }
}

@end
