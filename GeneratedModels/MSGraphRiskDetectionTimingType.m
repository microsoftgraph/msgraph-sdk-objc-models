// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRiskDetectionTimingType.h"

@interface MSGraphRiskDetectionTimingType () {
    MSGraphRiskDetectionTimingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRiskDetectionTimingTypeValue enumValue;
@end

@implementation MSGraphRiskDetectionTimingType

+ (MSGraphRiskDetectionTimingType*) notDefined {
    static MSGraphRiskDetectionTimingType *_notDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notDefined = [[MSGraphRiskDetectionTimingType alloc] init];
        _notDefined.enumValue = MSGraphRiskDetectionTimingTypeNotDefined;
    });
    return _notDefined;
}
+ (MSGraphRiskDetectionTimingType*) realtime {
    static MSGraphRiskDetectionTimingType *_realtime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _realtime = [[MSGraphRiskDetectionTimingType alloc] init];
        _realtime.enumValue = MSGraphRiskDetectionTimingTypeRealtime;
    });
    return _realtime;
}
+ (MSGraphRiskDetectionTimingType*) nearRealtime {
    static MSGraphRiskDetectionTimingType *_nearRealtime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nearRealtime = [[MSGraphRiskDetectionTimingType alloc] init];
        _nearRealtime.enumValue = MSGraphRiskDetectionTimingTypeNearRealtime;
    });
    return _nearRealtime;
}
+ (MSGraphRiskDetectionTimingType*) offline {
    static MSGraphRiskDetectionTimingType *_offline;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _offline = [[MSGraphRiskDetectionTimingType alloc] init];
        _offline.enumValue = MSGraphRiskDetectionTimingTypeOffline;
    });
    return _offline;
}
+ (MSGraphRiskDetectionTimingType*) unknownFutureValue {
    static MSGraphRiskDetectionTimingType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRiskDetectionTimingType alloc] init];
        _unknownFutureValue.enumValue = MSGraphRiskDetectionTimingTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRiskDetectionTimingType*) UnknownEnumValue {
    static MSGraphRiskDetectionTimingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRiskDetectionTimingType alloc] init];
        _unknownValue.enumValue = MSGraphRiskDetectionTimingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRiskDetectionTimingType*) riskDetectionTimingTypeWithEnumValue:(MSGraphRiskDetectionTimingTypeValue)val {

    switch(val)
    {
        case MSGraphRiskDetectionTimingTypeNotDefined:
            return [MSGraphRiskDetectionTimingType notDefined];
        case MSGraphRiskDetectionTimingTypeRealtime:
            return [MSGraphRiskDetectionTimingType realtime];
        case MSGraphRiskDetectionTimingTypeNearRealtime:
            return [MSGraphRiskDetectionTimingType nearRealtime];
        case MSGraphRiskDetectionTimingTypeOffline:
            return [MSGraphRiskDetectionTimingType offline];
        case MSGraphRiskDetectionTimingTypeUnknownFutureValue:
            return [MSGraphRiskDetectionTimingType unknownFutureValue];
        case MSGraphRiskDetectionTimingTypeEndOfEnum:
        default:
            return [MSGraphRiskDetectionTimingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRiskDetectionTimingTypeNotDefined:
            return @"notDefined";
        case MSGraphRiskDetectionTimingTypeRealtime:
            return @"realtime";
        case MSGraphRiskDetectionTimingTypeNearRealtime:
            return @"nearRealtime";
        case MSGraphRiskDetectionTimingTypeOffline:
            return @"offline";
        case MSGraphRiskDetectionTimingTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRiskDetectionTimingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRiskDetectionTimingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRiskDetectionTimingType)

- (MSGraphRiskDetectionTimingType*) toMSGraphRiskDetectionTimingType{

    if([self isEqualToString:@"notDefined"])
    {
          return [MSGraphRiskDetectionTimingType notDefined];
    }
    else if([self isEqualToString:@"realtime"])
    {
          return [MSGraphRiskDetectionTimingType realtime];
    }
    else if([self isEqualToString:@"nearRealtime"])
    {
          return [MSGraphRiskDetectionTimingType nearRealtime];
    }
    else if([self isEqualToString:@"offline"])
    {
          return [MSGraphRiskDetectionTimingType offline];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRiskDetectionTimingType unknownFutureValue];
    }
    else {
        return [MSGraphRiskDetectionTimingType UnknownEnumValue];
    }
}

@end
