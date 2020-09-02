// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChannelMembershipType.h"

@interface MSGraphChannelMembershipType () {
    MSGraphChannelMembershipTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChannelMembershipTypeValue enumValue;
@end

@implementation MSGraphChannelMembershipType

+ (MSGraphChannelMembershipType*) standard {
    static MSGraphChannelMembershipType *_standard;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _standard = [[MSGraphChannelMembershipType alloc] init];
        _standard.enumValue = MSGraphChannelMembershipTypeStandard;
    });
    return _standard;
}
+ (MSGraphChannelMembershipType*) private {
    static MSGraphChannelMembershipType *_private;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _private = [[MSGraphChannelMembershipType alloc] init];
        _private.enumValue = MSGraphChannelMembershipTypePrivate;
    });
    return _private;
}
+ (MSGraphChannelMembershipType*) unknownFutureValue {
    static MSGraphChannelMembershipType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphChannelMembershipType alloc] init];
        _unknownFutureValue.enumValue = MSGraphChannelMembershipTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphChannelMembershipType*) UnknownEnumValue {
    static MSGraphChannelMembershipType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChannelMembershipType alloc] init];
        _unknownValue.enumValue = MSGraphChannelMembershipTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChannelMembershipType*) channelMembershipTypeWithEnumValue:(MSGraphChannelMembershipTypeValue)val {

    switch(val)
    {
        case MSGraphChannelMembershipTypeStandard:
            return [MSGraphChannelMembershipType standard];
        case MSGraphChannelMembershipTypePrivate:
            return [MSGraphChannelMembershipType private];
        case MSGraphChannelMembershipTypeUnknownFutureValue:
            return [MSGraphChannelMembershipType unknownFutureValue];
        case MSGraphChannelMembershipTypeEndOfEnum:
        default:
            return [MSGraphChannelMembershipType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChannelMembershipTypeStandard:
            return @"standard";
        case MSGraphChannelMembershipTypePrivate:
            return @"private";
        case MSGraphChannelMembershipTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphChannelMembershipTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChannelMembershipTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChannelMembershipType)

- (MSGraphChannelMembershipType*) toMSGraphChannelMembershipType{

    if([self isEqualToString:@"standard"])
    {
          return [MSGraphChannelMembershipType standard];
    }
    else if([self isEqualToString:@"private"])
    {
          return [MSGraphChannelMembershipType private];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphChannelMembershipType unknownFutureValue];
    }
    else {
        return [MSGraphChannelMembershipType UnknownEnumValue];
    }
}

@end
