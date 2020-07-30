// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarSharingActionType.h"

@interface MSGraphCalendarSharingActionType () {
    MSGraphCalendarSharingActionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCalendarSharingActionTypeValue enumValue;
@end

@implementation MSGraphCalendarSharingActionType

+ (MSGraphCalendarSharingActionType*) accept {
    static MSGraphCalendarSharingActionType *_accept;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accept = [[MSGraphCalendarSharingActionType alloc] init];
        _accept.enumValue = MSGraphCalendarSharingActionTypeAccept;
    });
    return _accept;
}

+ (MSGraphCalendarSharingActionType*) UnknownEnumValue {
    static MSGraphCalendarSharingActionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCalendarSharingActionType alloc] init];
        _unknownValue.enumValue = MSGraphCalendarSharingActionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCalendarSharingActionType*) calendarSharingActionTypeWithEnumValue:(MSGraphCalendarSharingActionTypeValue)val {

    switch(val)
    {
        case MSGraphCalendarSharingActionTypeAccept:
            return [MSGraphCalendarSharingActionType accept];
        case MSGraphCalendarSharingActionTypeEndOfEnum:
        default:
            return [MSGraphCalendarSharingActionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCalendarSharingActionTypeAccept:
            return @"accept";
        case MSGraphCalendarSharingActionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCalendarSharingActionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCalendarSharingActionType)

- (MSGraphCalendarSharingActionType*) toMSGraphCalendarSharingActionType{

    if([self isEqualToString:@"accept"])
    {
          return [MSGraphCalendarSharingActionType accept];
    }
    else {
        return [MSGraphCalendarSharingActionType UnknownEnumValue];
    }
}

@end
