// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCalendarRoleType.h"

@interface MSGraphCalendarRoleType () {
    MSGraphCalendarRoleTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCalendarRoleTypeValue enumValue;
@end

@implementation MSGraphCalendarRoleType

+ (MSGraphCalendarRoleType*) none {
    static MSGraphCalendarRoleType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphCalendarRoleType alloc] init];
        _none.enumValue = MSGraphCalendarRoleTypeNone;
    });
    return _none;
}
+ (MSGraphCalendarRoleType*) freeBusyRead {
    static MSGraphCalendarRoleType *_freeBusyRead;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _freeBusyRead = [[MSGraphCalendarRoleType alloc] init];
        _freeBusyRead.enumValue = MSGraphCalendarRoleTypeFreeBusyRead;
    });
    return _freeBusyRead;
}
+ (MSGraphCalendarRoleType*) limitedRead {
    static MSGraphCalendarRoleType *_limitedRead;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _limitedRead = [[MSGraphCalendarRoleType alloc] init];
        _limitedRead.enumValue = MSGraphCalendarRoleTypeLimitedRead;
    });
    return _limitedRead;
}
+ (MSGraphCalendarRoleType*) read {
    static MSGraphCalendarRoleType *_read;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _read = [[MSGraphCalendarRoleType alloc] init];
        _read.enumValue = MSGraphCalendarRoleTypeRead;
    });
    return _read;
}
+ (MSGraphCalendarRoleType*) write {
    static MSGraphCalendarRoleType *_write;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _write = [[MSGraphCalendarRoleType alloc] init];
        _write.enumValue = MSGraphCalendarRoleTypeWrite;
    });
    return _write;
}
+ (MSGraphCalendarRoleType*) delegateWithoutPrivateEventAccess {
    static MSGraphCalendarRoleType *_delegateWithoutPrivateEventAccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delegateWithoutPrivateEventAccess = [[MSGraphCalendarRoleType alloc] init];
        _delegateWithoutPrivateEventAccess.enumValue = MSGraphCalendarRoleTypeDelegateWithoutPrivateEventAccess;
    });
    return _delegateWithoutPrivateEventAccess;
}
+ (MSGraphCalendarRoleType*) delegateWithPrivateEventAccess {
    static MSGraphCalendarRoleType *_delegateWithPrivateEventAccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delegateWithPrivateEventAccess = [[MSGraphCalendarRoleType alloc] init];
        _delegateWithPrivateEventAccess.enumValue = MSGraphCalendarRoleTypeDelegateWithPrivateEventAccess;
    });
    return _delegateWithPrivateEventAccess;
}
+ (MSGraphCalendarRoleType*) custom {
    static MSGraphCalendarRoleType *_custom;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _custom = [[MSGraphCalendarRoleType alloc] init];
        _custom.enumValue = MSGraphCalendarRoleTypeCustom;
    });
    return _custom;
}

+ (MSGraphCalendarRoleType*) UnknownEnumValue {
    static MSGraphCalendarRoleType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCalendarRoleType alloc] init];
        _unknownValue.enumValue = MSGraphCalendarRoleTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCalendarRoleType*) calendarRoleTypeWithEnumValue:(MSGraphCalendarRoleTypeValue)val {

    switch(val)
    {
        case MSGraphCalendarRoleTypeNone:
            return [MSGraphCalendarRoleType none];
        case MSGraphCalendarRoleTypeFreeBusyRead:
            return [MSGraphCalendarRoleType freeBusyRead];
        case MSGraphCalendarRoleTypeLimitedRead:
            return [MSGraphCalendarRoleType limitedRead];
        case MSGraphCalendarRoleTypeRead:
            return [MSGraphCalendarRoleType read];
        case MSGraphCalendarRoleTypeWrite:
            return [MSGraphCalendarRoleType write];
        case MSGraphCalendarRoleTypeDelegateWithoutPrivateEventAccess:
            return [MSGraphCalendarRoleType delegateWithoutPrivateEventAccess];
        case MSGraphCalendarRoleTypeDelegateWithPrivateEventAccess:
            return [MSGraphCalendarRoleType delegateWithPrivateEventAccess];
        case MSGraphCalendarRoleTypeCustom:
            return [MSGraphCalendarRoleType custom];
        case MSGraphCalendarRoleTypeEndOfEnum:
        default:
            return [MSGraphCalendarRoleType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCalendarRoleTypeNone:
            return @"none";
        case MSGraphCalendarRoleTypeFreeBusyRead:
            return @"freeBusyRead";
        case MSGraphCalendarRoleTypeLimitedRead:
            return @"limitedRead";
        case MSGraphCalendarRoleTypeRead:
            return @"read";
        case MSGraphCalendarRoleTypeWrite:
            return @"write";
        case MSGraphCalendarRoleTypeDelegateWithoutPrivateEventAccess:
            return @"delegateWithoutPrivateEventAccess";
        case MSGraphCalendarRoleTypeDelegateWithPrivateEventAccess:
            return @"delegateWithPrivateEventAccess";
        case MSGraphCalendarRoleTypeCustom:
            return @"custom";
        case MSGraphCalendarRoleTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCalendarRoleTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCalendarRoleType)

- (MSGraphCalendarRoleType*) toMSGraphCalendarRoleType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphCalendarRoleType none];
    }
    else if([self isEqualToString:@"freeBusyRead"])
    {
          return [MSGraphCalendarRoleType freeBusyRead];
    }
    else if([self isEqualToString:@"limitedRead"])
    {
          return [MSGraphCalendarRoleType limitedRead];
    }
    else if([self isEqualToString:@"read"])
    {
          return [MSGraphCalendarRoleType read];
    }
    else if([self isEqualToString:@"write"])
    {
          return [MSGraphCalendarRoleType write];
    }
    else if([self isEqualToString:@"delegateWithoutPrivateEventAccess"])
    {
          return [MSGraphCalendarRoleType delegateWithoutPrivateEventAccess];
    }
    else if([self isEqualToString:@"delegateWithPrivateEventAccess"])
    {
          return [MSGraphCalendarRoleType delegateWithPrivateEventAccess];
    }
    else if([self isEqualToString:@"custom"])
    {
          return [MSGraphCalendarRoleType custom];
    }
    else {
        return [MSGraphCalendarRoleType UnknownEnumValue];
    }
}

@end
