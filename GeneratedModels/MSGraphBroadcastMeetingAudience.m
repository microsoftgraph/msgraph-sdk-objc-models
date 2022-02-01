// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBroadcastMeetingAudience.h"

@interface MSGraphBroadcastMeetingAudience () {
    MSGraphBroadcastMeetingAudienceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBroadcastMeetingAudienceValue enumValue;
@end

@implementation MSGraphBroadcastMeetingAudience

+ (MSGraphBroadcastMeetingAudience*) roleIsAttendee {
    static MSGraphBroadcastMeetingAudience *_roleIsAttendee;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _roleIsAttendee = [[MSGraphBroadcastMeetingAudience alloc] init];
        _roleIsAttendee.enumValue = MSGraphBroadcastMeetingAudienceRoleIsAttendee;
    });
    return _roleIsAttendee;
}
+ (MSGraphBroadcastMeetingAudience*) organization {
    static MSGraphBroadcastMeetingAudience *_organization;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organization = [[MSGraphBroadcastMeetingAudience alloc] init];
        _organization.enumValue = MSGraphBroadcastMeetingAudienceOrganization;
    });
    return _organization;
}
+ (MSGraphBroadcastMeetingAudience*) everyone {
    static MSGraphBroadcastMeetingAudience *_everyone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyone = [[MSGraphBroadcastMeetingAudience alloc] init];
        _everyone.enumValue = MSGraphBroadcastMeetingAudienceEveryone;
    });
    return _everyone;
}
+ (MSGraphBroadcastMeetingAudience*) unknownFutureValue {
    static MSGraphBroadcastMeetingAudience *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphBroadcastMeetingAudience alloc] init];
        _unknownFutureValue.enumValue = MSGraphBroadcastMeetingAudienceUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphBroadcastMeetingAudience*) UnknownEnumValue {
    static MSGraphBroadcastMeetingAudience *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBroadcastMeetingAudience alloc] init];
        _unknownValue.enumValue = MSGraphBroadcastMeetingAudienceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBroadcastMeetingAudience*) broadcastMeetingAudienceWithEnumValue:(MSGraphBroadcastMeetingAudienceValue)val {

    switch(val)
    {
        case MSGraphBroadcastMeetingAudienceRoleIsAttendee:
            return [MSGraphBroadcastMeetingAudience roleIsAttendee];
        case MSGraphBroadcastMeetingAudienceOrganization:
            return [MSGraphBroadcastMeetingAudience organization];
        case MSGraphBroadcastMeetingAudienceEveryone:
            return [MSGraphBroadcastMeetingAudience everyone];
        case MSGraphBroadcastMeetingAudienceUnknownFutureValue:
            return [MSGraphBroadcastMeetingAudience unknownFutureValue];
        case MSGraphBroadcastMeetingAudienceEndOfEnum:
        default:
            return [MSGraphBroadcastMeetingAudience UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBroadcastMeetingAudienceRoleIsAttendee:
            return @"roleIsAttendee";
        case MSGraphBroadcastMeetingAudienceOrganization:
            return @"organization";
        case MSGraphBroadcastMeetingAudienceEveryone:
            return @"everyone";
        case MSGraphBroadcastMeetingAudienceUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphBroadcastMeetingAudienceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBroadcastMeetingAudienceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBroadcastMeetingAudience)

- (MSGraphBroadcastMeetingAudience*) toMSGraphBroadcastMeetingAudience{

    if([self isEqualToString:@"roleIsAttendee"])
    {
          return [MSGraphBroadcastMeetingAudience roleIsAttendee];
    }
    else if([self isEqualToString:@"organization"])
    {
          return [MSGraphBroadcastMeetingAudience organization];
    }
    else if([self isEqualToString:@"everyone"])
    {
          return [MSGraphBroadcastMeetingAudience everyone];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphBroadcastMeetingAudience unknownFutureValue];
    }
    else {
        return [MSGraphBroadcastMeetingAudience UnknownEnumValue];
    }
}

@end
