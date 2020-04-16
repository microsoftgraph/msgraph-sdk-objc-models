// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarSharingAction.h"

@interface MSGraphCalendarSharingAction () {
    MSGraphCalendarSharingActionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCalendarSharingActionValue enumValue;
@end

@implementation MSGraphCalendarSharingAction

+ (MSGraphCalendarSharingAction*) accept {
    static MSGraphCalendarSharingAction *_accept;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accept = [[MSGraphCalendarSharingAction alloc] init];
        _accept.enumValue = MSGraphCalendarSharingActionAccept;
    });
    return _accept;
}
+ (MSGraphCalendarSharingAction*) acceptAndViewCalendar {
    static MSGraphCalendarSharingAction *_acceptAndViewCalendar;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _acceptAndViewCalendar = [[MSGraphCalendarSharingAction alloc] init];
        _acceptAndViewCalendar.enumValue = MSGraphCalendarSharingActionAcceptAndViewCalendar;
    });
    return _acceptAndViewCalendar;
}
+ (MSGraphCalendarSharingAction*) viewCalendar {
    static MSGraphCalendarSharingAction *_viewCalendar;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _viewCalendar = [[MSGraphCalendarSharingAction alloc] init];
        _viewCalendar.enumValue = MSGraphCalendarSharingActionViewCalendar;
    });
    return _viewCalendar;
}
+ (MSGraphCalendarSharingAction*) addThisCalendar {
    static MSGraphCalendarSharingAction *_addThisCalendar;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _addThisCalendar = [[MSGraphCalendarSharingAction alloc] init];
        _addThisCalendar.enumValue = MSGraphCalendarSharingActionAddThisCalendar;
    });
    return _addThisCalendar;
}

+ (MSGraphCalendarSharingAction*) UnknownEnumValue {
    static MSGraphCalendarSharingAction *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCalendarSharingAction alloc] init];
        _unknownValue.enumValue = MSGraphCalendarSharingActionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCalendarSharingAction*) calendarSharingActionWithEnumValue:(MSGraphCalendarSharingActionValue)val {

    switch(val)
    {
        case MSGraphCalendarSharingActionAccept:
            return [MSGraphCalendarSharingAction accept];
        case MSGraphCalendarSharingActionAcceptAndViewCalendar:
            return [MSGraphCalendarSharingAction acceptAndViewCalendar];
        case MSGraphCalendarSharingActionViewCalendar:
            return [MSGraphCalendarSharingAction viewCalendar];
        case MSGraphCalendarSharingActionAddThisCalendar:
            return [MSGraphCalendarSharingAction addThisCalendar];
        case MSGraphCalendarSharingActionEndOfEnum:
        default:
            return [MSGraphCalendarSharingAction UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCalendarSharingActionAccept:
            return @"accept";
        case MSGraphCalendarSharingActionAcceptAndViewCalendar:
            return @"acceptAndViewCalendar";
        case MSGraphCalendarSharingActionViewCalendar:
            return @"viewCalendar";
        case MSGraphCalendarSharingActionAddThisCalendar:
            return @"addThisCalendar";
        case MSGraphCalendarSharingActionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCalendarSharingActionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCalendarSharingAction)

- (MSGraphCalendarSharingAction*) toMSGraphCalendarSharingAction{

    if([self isEqualToString:@"accept"])
    {
          return [MSGraphCalendarSharingAction accept];
    }
    else if([self isEqualToString:@"acceptAndViewCalendar"])
    {
          return [MSGraphCalendarSharingAction acceptAndViewCalendar];
    }
    else if([self isEqualToString:@"viewCalendar"])
    {
          return [MSGraphCalendarSharingAction viewCalendar];
    }
    else if([self isEqualToString:@"addThisCalendar"])
    {
          return [MSGraphCalendarSharingAction addThisCalendar];
    }
    else {
        return [MSGraphCalendarSharingAction UnknownEnumValue];
    }
}

@end
