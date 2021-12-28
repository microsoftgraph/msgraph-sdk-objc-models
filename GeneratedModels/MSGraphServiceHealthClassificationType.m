// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphServiceHealthClassificationType.h"

@interface MSGraphServiceHealthClassificationType () {
    MSGraphServiceHealthClassificationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphServiceHealthClassificationTypeValue enumValue;
@end

@implementation MSGraphServiceHealthClassificationType

+ (MSGraphServiceHealthClassificationType*) advisory {
    static MSGraphServiceHealthClassificationType *_advisory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _advisory = [[MSGraphServiceHealthClassificationType alloc] init];
        _advisory.enumValue = MSGraphServiceHealthClassificationTypeAdvisory;
    });
    return _advisory;
}
+ (MSGraphServiceHealthClassificationType*) incident {
    static MSGraphServiceHealthClassificationType *_incident;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _incident = [[MSGraphServiceHealthClassificationType alloc] init];
        _incident.enumValue = MSGraphServiceHealthClassificationTypeIncident;
    });
    return _incident;
}
+ (MSGraphServiceHealthClassificationType*) unknownFutureValue {
    static MSGraphServiceHealthClassificationType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphServiceHealthClassificationType alloc] init];
        _unknownFutureValue.enumValue = MSGraphServiceHealthClassificationTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphServiceHealthClassificationType*) UnknownEnumValue {
    static MSGraphServiceHealthClassificationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphServiceHealthClassificationType alloc] init];
        _unknownValue.enumValue = MSGraphServiceHealthClassificationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphServiceHealthClassificationType*) serviceHealthClassificationTypeWithEnumValue:(MSGraphServiceHealthClassificationTypeValue)val {

    switch(val)
    {
        case MSGraphServiceHealthClassificationTypeAdvisory:
            return [MSGraphServiceHealthClassificationType advisory];
        case MSGraphServiceHealthClassificationTypeIncident:
            return [MSGraphServiceHealthClassificationType incident];
        case MSGraphServiceHealthClassificationTypeUnknownFutureValue:
            return [MSGraphServiceHealthClassificationType unknownFutureValue];
        case MSGraphServiceHealthClassificationTypeEndOfEnum:
        default:
            return [MSGraphServiceHealthClassificationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphServiceHealthClassificationTypeAdvisory:
            return @"advisory";
        case MSGraphServiceHealthClassificationTypeIncident:
            return @"incident";
        case MSGraphServiceHealthClassificationTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphServiceHealthClassificationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphServiceHealthClassificationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphServiceHealthClassificationType)

- (MSGraphServiceHealthClassificationType*) toMSGraphServiceHealthClassificationType{

    if([self isEqualToString:@"advisory"])
    {
          return [MSGraphServiceHealthClassificationType advisory];
    }
    else if([self isEqualToString:@"incident"])
    {
          return [MSGraphServiceHealthClassificationType incident];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphServiceHealthClassificationType unknownFutureValue];
    }
    else {
        return [MSGraphServiceHealthClassificationType UnknownEnumValue];
    }
}

@end
