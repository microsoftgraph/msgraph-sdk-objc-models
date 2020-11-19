// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnlineMeetingPresenters.h"

@interface MSGraphOnlineMeetingPresenters () {
    MSGraphOnlineMeetingPresentersValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnlineMeetingPresentersValue enumValue;
@end

@implementation MSGraphOnlineMeetingPresenters

+ (MSGraphOnlineMeetingPresenters*) everyone {
    static MSGraphOnlineMeetingPresenters *_everyone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyone = [[MSGraphOnlineMeetingPresenters alloc] init];
        _everyone.enumValue = MSGraphOnlineMeetingPresentersEveryone;
    });
    return _everyone;
}
+ (MSGraphOnlineMeetingPresenters*) organization {
    static MSGraphOnlineMeetingPresenters *_organization;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organization = [[MSGraphOnlineMeetingPresenters alloc] init];
        _organization.enumValue = MSGraphOnlineMeetingPresentersOrganization;
    });
    return _organization;
}
+ (MSGraphOnlineMeetingPresenters*) roleIsPresenter {
    static MSGraphOnlineMeetingPresenters *_roleIsPresenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _roleIsPresenter = [[MSGraphOnlineMeetingPresenters alloc] init];
        _roleIsPresenter.enumValue = MSGraphOnlineMeetingPresentersRoleIsPresenter;
    });
    return _roleIsPresenter;
}
+ (MSGraphOnlineMeetingPresenters*) organizer {
    static MSGraphOnlineMeetingPresenters *_organizer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _organizer = [[MSGraphOnlineMeetingPresenters alloc] init];
        _organizer.enumValue = MSGraphOnlineMeetingPresentersOrganizer;
    });
    return _organizer;
}
+ (MSGraphOnlineMeetingPresenters*) unknownFutureValue {
    static MSGraphOnlineMeetingPresenters *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphOnlineMeetingPresenters alloc] init];
        _unknownFutureValue.enumValue = MSGraphOnlineMeetingPresentersUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphOnlineMeetingPresenters*) UnknownEnumValue {
    static MSGraphOnlineMeetingPresenters *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnlineMeetingPresenters alloc] init];
        _unknownValue.enumValue = MSGraphOnlineMeetingPresentersEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnlineMeetingPresenters*) onlineMeetingPresentersWithEnumValue:(MSGraphOnlineMeetingPresentersValue)val {

    switch(val)
    {
        case MSGraphOnlineMeetingPresentersEveryone:
            return [MSGraphOnlineMeetingPresenters everyone];
        case MSGraphOnlineMeetingPresentersOrganization:
            return [MSGraphOnlineMeetingPresenters organization];
        case MSGraphOnlineMeetingPresentersRoleIsPresenter:
            return [MSGraphOnlineMeetingPresenters roleIsPresenter];
        case MSGraphOnlineMeetingPresentersOrganizer:
            return [MSGraphOnlineMeetingPresenters organizer];
        case MSGraphOnlineMeetingPresentersUnknownFutureValue:
            return [MSGraphOnlineMeetingPresenters unknownFutureValue];
        case MSGraphOnlineMeetingPresentersEndOfEnum:
        default:
            return [MSGraphOnlineMeetingPresenters UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnlineMeetingPresentersEveryone:
            return @"everyone";
        case MSGraphOnlineMeetingPresentersOrganization:
            return @"organization";
        case MSGraphOnlineMeetingPresentersRoleIsPresenter:
            return @"roleIsPresenter";
        case MSGraphOnlineMeetingPresentersOrganizer:
            return @"organizer";
        case MSGraphOnlineMeetingPresentersUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphOnlineMeetingPresentersEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnlineMeetingPresentersValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnlineMeetingPresenters)

- (MSGraphOnlineMeetingPresenters*) toMSGraphOnlineMeetingPresenters{

    if([self isEqualToString:@"everyone"])
    {
          return [MSGraphOnlineMeetingPresenters everyone];
    }
    else if([self isEqualToString:@"organization"])
    {
          return [MSGraphOnlineMeetingPresenters organization];
    }
    else if([self isEqualToString:@"roleIsPresenter"])
    {
          return [MSGraphOnlineMeetingPresenters roleIsPresenter];
    }
    else if([self isEqualToString:@"organizer"])
    {
          return [MSGraphOnlineMeetingPresenters organizer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphOnlineMeetingPresenters unknownFutureValue];
    }
    else {
        return [MSGraphOnlineMeetingPresenters UnknownEnumValue];
    }
}

@end
