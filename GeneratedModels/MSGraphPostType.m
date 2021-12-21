// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPostType.h"

@interface MSGraphPostType () {
    MSGraphPostTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPostTypeValue enumValue;
@end

@implementation MSGraphPostType

+ (MSGraphPostType*) regular {
    static MSGraphPostType *_regular;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _regular = [[MSGraphPostType alloc] init];
        _regular.enumValue = MSGraphPostTypeRegular;
    });
    return _regular;
}
+ (MSGraphPostType*) quick {
    static MSGraphPostType *_quick;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _quick = [[MSGraphPostType alloc] init];
        _quick.enumValue = MSGraphPostTypeQuick;
    });
    return _quick;
}
+ (MSGraphPostType*) strategic {
    static MSGraphPostType *_strategic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _strategic = [[MSGraphPostType alloc] init];
        _strategic.enumValue = MSGraphPostTypeStrategic;
    });
    return _strategic;
}
+ (MSGraphPostType*) unknownFutureValue {
    static MSGraphPostType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPostType alloc] init];
        _unknownFutureValue.enumValue = MSGraphPostTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPostType*) UnknownEnumValue {
    static MSGraphPostType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPostType alloc] init];
        _unknownValue.enumValue = MSGraphPostTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPostType*) postTypeWithEnumValue:(MSGraphPostTypeValue)val {

    switch(val)
    {
        case MSGraphPostTypeRegular:
            return [MSGraphPostType regular];
        case MSGraphPostTypeQuick:
            return [MSGraphPostType quick];
        case MSGraphPostTypeStrategic:
            return [MSGraphPostType strategic];
        case MSGraphPostTypeUnknownFutureValue:
            return [MSGraphPostType unknownFutureValue];
        case MSGraphPostTypeEndOfEnum:
        default:
            return [MSGraphPostType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPostTypeRegular:
            return @"regular";
        case MSGraphPostTypeQuick:
            return @"quick";
        case MSGraphPostTypeStrategic:
            return @"strategic";
        case MSGraphPostTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPostTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPostTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPostType)

- (MSGraphPostType*) toMSGraphPostType{

    if([self isEqualToString:@"regular"])
    {
          return [MSGraphPostType regular];
    }
    else if([self isEqualToString:@"quick"])
    {
          return [MSGraphPostType quick];
    }
    else if([self isEqualToString:@"strategic"])
    {
          return [MSGraphPostType strategic];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPostType unknownFutureValue];
    }
    else {
        return [MSGraphPostType UnknownEnumValue];
    }
}

@end
