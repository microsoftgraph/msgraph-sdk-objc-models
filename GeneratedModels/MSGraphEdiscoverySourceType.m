// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoverySourceType.h"

@interface MSGraphEdiscoverySourceType () {
    MSGraphEdiscoverySourceTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoverySourceTypeValue enumValue;
@end

@implementation MSGraphEdiscoverySourceType

+ (MSGraphEdiscoverySourceType*) mailbox {
    static MSGraphEdiscoverySourceType *_mailbox;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mailbox = [[MSGraphEdiscoverySourceType alloc] init];
        _mailbox.enumValue = MSGraphEdiscoverySourceTypeMailbox;
    });
    return _mailbox;
}
+ (MSGraphEdiscoverySourceType*) site {
    static MSGraphEdiscoverySourceType *_site;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _site = [[MSGraphEdiscoverySourceType alloc] init];
        _site.enumValue = MSGraphEdiscoverySourceTypeSite;
    });
    return _site;
}

+ (MSGraphEdiscoverySourceType*) UnknownEnumValue {
    static MSGraphEdiscoverySourceType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoverySourceType alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoverySourceTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoverySourceType*) sourceTypeWithEnumValue:(MSGraphEdiscoverySourceTypeValue)val {

    switch(val)
    {
        case MSGraphEdiscoverySourceTypeMailbox:
            return [MSGraphEdiscoverySourceType mailbox];
        case MSGraphEdiscoverySourceTypeSite:
            return [MSGraphEdiscoverySourceType site];
        case MSGraphEdiscoverySourceTypeEndOfEnum:
        default:
            return [MSGraphEdiscoverySourceType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoverySourceTypeMailbox:
            return @"mailbox";
        case MSGraphEdiscoverySourceTypeSite:
            return @"site";
        case MSGraphEdiscoverySourceTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoverySourceTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoverySourceType)

- (MSGraphEdiscoverySourceType*) toMSGraphEdiscoverySourceType{

    if([self isEqualToString:@"mailbox"])
    {
          return [MSGraphEdiscoverySourceType mailbox];
    }
    else if([self isEqualToString:@"site"])
    {
          return [MSGraphEdiscoverySourceType site];
    }
    else {
        return [MSGraphEdiscoverySourceType UnknownEnumValue];
    }
}

@end
