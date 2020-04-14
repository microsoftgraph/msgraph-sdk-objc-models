// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarSharingActionImportance.h"

@interface MSGraphCalendarSharingActionImportance () {
    MSGraphCalendarSharingActionImportanceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCalendarSharingActionImportanceValue enumValue;
@end

@implementation MSGraphCalendarSharingActionImportance

+ (MSGraphCalendarSharingActionImportance*) primary {
    static MSGraphCalendarSharingActionImportance *_primary;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _primary = [[MSGraphCalendarSharingActionImportance alloc] init];
        _primary.enumValue = MSGraphCalendarSharingActionImportancePrimary;
    });
    return _primary;
}
+ (MSGraphCalendarSharingActionImportance*) secondary {
    static MSGraphCalendarSharingActionImportance *_secondary;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _secondary = [[MSGraphCalendarSharingActionImportance alloc] init];
        _secondary.enumValue = MSGraphCalendarSharingActionImportanceSecondary;
    });
    return _secondary;
}

+ (MSGraphCalendarSharingActionImportance*) UnknownEnumValue {
    static MSGraphCalendarSharingActionImportance *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCalendarSharingActionImportance alloc] init];
        _unknownValue.enumValue = MSGraphCalendarSharingActionImportanceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCalendarSharingActionImportance*) calendarSharingActionImportanceWithEnumValue:(MSGraphCalendarSharingActionImportanceValue)val {

    switch(val)
    {
        case MSGraphCalendarSharingActionImportancePrimary:
            return [MSGraphCalendarSharingActionImportance primary];
        case MSGraphCalendarSharingActionImportanceSecondary:
            return [MSGraphCalendarSharingActionImportance secondary];
        case MSGraphCalendarSharingActionImportanceEndOfEnum:
        default:
            return [MSGraphCalendarSharingActionImportance UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCalendarSharingActionImportancePrimary:
            return @"primary";
        case MSGraphCalendarSharingActionImportanceSecondary:
            return @"secondary";
        case MSGraphCalendarSharingActionImportanceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCalendarSharingActionImportanceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCalendarSharingActionImportance)

- (MSGraphCalendarSharingActionImportance*) toMSGraphCalendarSharingActionImportance{

    if([self isEqualToString:@"primary"])
    {
          return [MSGraphCalendarSharingActionImportance primary];
    }
    else if([self isEqualToString:@"secondary"])
    {
          return [MSGraphCalendarSharingActionImportance secondary];
    }
    else {
        return [MSGraphCalendarSharingActionImportance UnknownEnumValue];
    }
}

@end
