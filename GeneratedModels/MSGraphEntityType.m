// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEntityType.h"

@interface MSGraphEntityType () {
    MSGraphEntityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEntityTypeValue enumValue;
@end

@implementation MSGraphEntityType

+ (MSGraphEntityType*) event {
    static MSGraphEntityType *_event;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _event = [[MSGraphEntityType alloc] init];
        _event.enumValue = MSGraphEntityTypeEvent;
    });
    return _event;
}
+ (MSGraphEntityType*) message {
    static MSGraphEntityType *_message;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _message = [[MSGraphEntityType alloc] init];
        _message.enumValue = MSGraphEntityTypeMessage;
    });
    return _message;
}
+ (MSGraphEntityType*) driveItem {
    static MSGraphEntityType *_driveItem;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _driveItem = [[MSGraphEntityType alloc] init];
        _driveItem.enumValue = MSGraphEntityTypeDriveItem;
    });
    return _driveItem;
}
+ (MSGraphEntityType*) externalItem {
    static MSGraphEntityType *_externalItem;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalItem = [[MSGraphEntityType alloc] init];
        _externalItem.enumValue = MSGraphEntityTypeExternalItem;
    });
    return _externalItem;
}
+ (MSGraphEntityType*) site {
    static MSGraphEntityType *_site;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _site = [[MSGraphEntityType alloc] init];
        _site.enumValue = MSGraphEntityTypeSite;
    });
    return _site;
}
+ (MSGraphEntityType*) list {
    static MSGraphEntityType *_list;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _list = [[MSGraphEntityType alloc] init];
        _list.enumValue = MSGraphEntityTypeList;
    });
    return _list;
}
+ (MSGraphEntityType*) listItem {
    static MSGraphEntityType *_listItem;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _listItem = [[MSGraphEntityType alloc] init];
        _listItem.enumValue = MSGraphEntityTypeListItem;
    });
    return _listItem;
}
+ (MSGraphEntityType*) drive {
    static MSGraphEntityType *_drive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _drive = [[MSGraphEntityType alloc] init];
        _drive.enumValue = MSGraphEntityTypeDrive;
    });
    return _drive;
}
+ (MSGraphEntityType*) unknownfuturevalue {
    static MSGraphEntityType *_unknownfuturevalue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownfuturevalue = [[MSGraphEntityType alloc] init];
        _unknownfuturevalue.enumValue = MSGraphEntityTypeUnknownfuturevalue;
    });
    return _unknownfuturevalue;
}

+ (MSGraphEntityType*) UnknownEnumValue {
    static MSGraphEntityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEntityType alloc] init];
        _unknownValue.enumValue = MSGraphEntityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEntityType*) entityTypeWithEnumValue:(MSGraphEntityTypeValue)val {

    switch(val)
    {
        case MSGraphEntityTypeEvent:
            return [MSGraphEntityType event];
        case MSGraphEntityTypeMessage:
            return [MSGraphEntityType message];
        case MSGraphEntityTypeDriveItem:
            return [MSGraphEntityType driveItem];
        case MSGraphEntityTypeExternalItem:
            return [MSGraphEntityType externalItem];
        case MSGraphEntityTypeSite:
            return [MSGraphEntityType site];
        case MSGraphEntityTypeList:
            return [MSGraphEntityType list];
        case MSGraphEntityTypeListItem:
            return [MSGraphEntityType listItem];
        case MSGraphEntityTypeDrive:
            return [MSGraphEntityType drive];
        case MSGraphEntityTypeUnknownfuturevalue:
            return [MSGraphEntityType unknownfuturevalue];
        case MSGraphEntityTypeEndOfEnum:
        default:
            return [MSGraphEntityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEntityTypeEvent:
            return @"event";
        case MSGraphEntityTypeMessage:
            return @"message";
        case MSGraphEntityTypeDriveItem:
            return @"driveItem";
        case MSGraphEntityTypeExternalItem:
            return @"externalItem";
        case MSGraphEntityTypeSite:
            return @"site";
        case MSGraphEntityTypeList:
            return @"list";
        case MSGraphEntityTypeListItem:
            return @"listItem";
        case MSGraphEntityTypeDrive:
            return @"drive";
        case MSGraphEntityTypeUnknownfuturevalue:
            return @"unknownfuturevalue";
        case MSGraphEntityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEntityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEntityType)

- (MSGraphEntityType*) toMSGraphEntityType{

    if([self isEqualToString:@"event"])
    {
          return [MSGraphEntityType event];
    }
    else if([self isEqualToString:@"message"])
    {
          return [MSGraphEntityType message];
    }
    else if([self isEqualToString:@"driveItem"])
    {
          return [MSGraphEntityType driveItem];
    }
    else if([self isEqualToString:@"externalItem"])
    {
          return [MSGraphEntityType externalItem];
    }
    else if([self isEqualToString:@"site"])
    {
          return [MSGraphEntityType site];
    }
    else if([self isEqualToString:@"list"])
    {
          return [MSGraphEntityType list];
    }
    else if([self isEqualToString:@"listItem"])
    {
          return [MSGraphEntityType listItem];
    }
    else if([self isEqualToString:@"drive"])
    {
          return [MSGraphEntityType drive];
    }
    else if([self isEqualToString:@"unknownfuturevalue"])
    {
          return [MSGraphEntityType unknownfuturevalue];
    }
    else {
        return [MSGraphEntityType UnknownEnumValue];
    }
}

@end
