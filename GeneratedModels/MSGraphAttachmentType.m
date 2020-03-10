// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAttachmentType.h"

@interface MSGraphAttachmentType () {
    MSGraphAttachmentTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAttachmentTypeValue enumValue;
@end

@implementation MSGraphAttachmentType

+ (MSGraphAttachmentType*) file {
    static MSGraphAttachmentType *_file;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _file = [[MSGraphAttachmentType alloc] init];
        _file.enumValue = MSGraphAttachmentTypeFile;
    });
    return _file;
}
+ (MSGraphAttachmentType*) item {
    static MSGraphAttachmentType *_item;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _item = [[MSGraphAttachmentType alloc] init];
        _item.enumValue = MSGraphAttachmentTypeItem;
    });
    return _item;
}
+ (MSGraphAttachmentType*) reference {
    static MSGraphAttachmentType *_reference;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reference = [[MSGraphAttachmentType alloc] init];
        _reference.enumValue = MSGraphAttachmentTypeReference;
    });
    return _reference;
}

+ (MSGraphAttachmentType*) UnknownEnumValue {
    static MSGraphAttachmentType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAttachmentType alloc] init];
        _unknownValue.enumValue = MSGraphAttachmentTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAttachmentType*) attachmentTypeWithEnumValue:(MSGraphAttachmentTypeValue)val {

    switch(val)
    {
        case MSGraphAttachmentTypeFile:
            return [MSGraphAttachmentType file];
        case MSGraphAttachmentTypeItem:
            return [MSGraphAttachmentType item];
        case MSGraphAttachmentTypeReference:
            return [MSGraphAttachmentType reference];
        case MSGraphAttachmentTypeEndOfEnum:
        default:
            return [MSGraphAttachmentType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAttachmentTypeFile:
            return @"file";
        case MSGraphAttachmentTypeItem:
            return @"item";
        case MSGraphAttachmentTypeReference:
            return @"reference";
        case MSGraphAttachmentTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAttachmentTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAttachmentType)

- (MSGraphAttachmentType*) toMSGraphAttachmentType{

    if([self isEqualToString:@"file"])
    {
          return [MSGraphAttachmentType file];
    }
    else if([self isEqualToString:@"item"])
    {
          return [MSGraphAttachmentType item];
    }
    else if([self isEqualToString:@"reference"])
    {
          return [MSGraphAttachmentType reference];
    }
    else {
        return [MSGraphAttachmentType UnknownEnumValue];
    }
}

@end
