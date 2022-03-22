// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphUserPurpose.h"

@interface MSGraphUserPurpose () {
    MSGraphUserPurposeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphUserPurposeValue enumValue;
@end

@implementation MSGraphUserPurpose

+ (MSGraphUserPurpose*) user {
    static MSGraphUserPurpose *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphUserPurpose alloc] init];
        _user.enumValue = MSGraphUserPurposeUser;
    });
    return _user;
}
+ (MSGraphUserPurpose*) linked {
    static MSGraphUserPurpose *_linked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _linked = [[MSGraphUserPurpose alloc] init];
        _linked.enumValue = MSGraphUserPurposeLinked;
    });
    return _linked;
}
+ (MSGraphUserPurpose*) shared {
    static MSGraphUserPurpose *_shared;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shared = [[MSGraphUserPurpose alloc] init];
        _shared.enumValue = MSGraphUserPurposeShared;
    });
    return _shared;
}
+ (MSGraphUserPurpose*) room {
    static MSGraphUserPurpose *_room;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _room = [[MSGraphUserPurpose alloc] init];
        _room.enumValue = MSGraphUserPurposeRoom;
    });
    return _room;
}
+ (MSGraphUserPurpose*) equipment {
    static MSGraphUserPurpose *_equipment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _equipment = [[MSGraphUserPurpose alloc] init];
        _equipment.enumValue = MSGraphUserPurposeEquipment;
    });
    return _equipment;
}
+ (MSGraphUserPurpose*) others {
    static MSGraphUserPurpose *_others;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _others = [[MSGraphUserPurpose alloc] init];
        _others.enumValue = MSGraphUserPurposeOthers;
    });
    return _others;
}
+ (MSGraphUserPurpose*) unknownFutureValue {
    static MSGraphUserPurpose *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphUserPurpose alloc] init];
        _unknownFutureValue.enumValue = MSGraphUserPurposeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphUserPurpose*) UnknownEnumValue {
    static MSGraphUserPurpose *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphUserPurpose alloc] init];
        _unknownValue.enumValue = MSGraphUserPurposeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphUserPurpose*) userPurposeWithEnumValue:(MSGraphUserPurposeValue)val {

    switch(val)
    {
        case MSGraphUserPurposeUser:
            return [MSGraphUserPurpose user];
        case MSGraphUserPurposeLinked:
            return [MSGraphUserPurpose linked];
        case MSGraphUserPurposeShared:
            return [MSGraphUserPurpose shared];
        case MSGraphUserPurposeRoom:
            return [MSGraphUserPurpose room];
        case MSGraphUserPurposeEquipment:
            return [MSGraphUserPurpose equipment];
        case MSGraphUserPurposeOthers:
            return [MSGraphUserPurpose others];
        case MSGraphUserPurposeUnknownFutureValue:
            return [MSGraphUserPurpose unknownFutureValue];
        case MSGraphUserPurposeEndOfEnum:
        default:
            return [MSGraphUserPurpose UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphUserPurposeUser:
            return @"user";
        case MSGraphUserPurposeLinked:
            return @"linked";
        case MSGraphUserPurposeShared:
            return @"shared";
        case MSGraphUserPurposeRoom:
            return @"room";
        case MSGraphUserPurposeEquipment:
            return @"equipment";
        case MSGraphUserPurposeOthers:
            return @"others";
        case MSGraphUserPurposeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphUserPurposeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphUserPurposeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphUserPurpose)

- (MSGraphUserPurpose*) toMSGraphUserPurpose{

    if([self isEqualToString:@"user"])
    {
          return [MSGraphUserPurpose user];
    }
    else if([self isEqualToString:@"linked"])
    {
          return [MSGraphUserPurpose linked];
    }
    else if([self isEqualToString:@"shared"])
    {
          return [MSGraphUserPurpose shared];
    }
    else if([self isEqualToString:@"room"])
    {
          return [MSGraphUserPurpose room];
    }
    else if([self isEqualToString:@"equipment"])
    {
          return [MSGraphUserPurpose equipment];
    }
    else if([self isEqualToString:@"others"])
    {
          return [MSGraphUserPurpose others];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphUserPurpose unknownFutureValue];
    }
    else {
        return [MSGraphUserPurpose UnknownEnumValue];
    }
}

@end
