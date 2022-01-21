// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphServiceUpdateSeverity.h"

@interface MSGraphServiceUpdateSeverity () {
    MSGraphServiceUpdateSeverityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphServiceUpdateSeverityValue enumValue;
@end

@implementation MSGraphServiceUpdateSeverity

+ (MSGraphServiceUpdateSeverity*) normal {
    static MSGraphServiceUpdateSeverity *_normal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _normal = [[MSGraphServiceUpdateSeverity alloc] init];
        _normal.enumValue = MSGraphServiceUpdateSeverityNormal;
    });
    return _normal;
}
+ (MSGraphServiceUpdateSeverity*) high {
    static MSGraphServiceUpdateSeverity *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphServiceUpdateSeverity alloc] init];
        _high.enumValue = MSGraphServiceUpdateSeverityHigh;
    });
    return _high;
}
+ (MSGraphServiceUpdateSeverity*) critical {
    static MSGraphServiceUpdateSeverity *_critical;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _critical = [[MSGraphServiceUpdateSeverity alloc] init];
        _critical.enumValue = MSGraphServiceUpdateSeverityCritical;
    });
    return _critical;
}
+ (MSGraphServiceUpdateSeverity*) unknownFutureValue {
    static MSGraphServiceUpdateSeverity *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphServiceUpdateSeverity alloc] init];
        _unknownFutureValue.enumValue = MSGraphServiceUpdateSeverityUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphServiceUpdateSeverity*) UnknownEnumValue {
    static MSGraphServiceUpdateSeverity *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphServiceUpdateSeverity alloc] init];
        _unknownValue.enumValue = MSGraphServiceUpdateSeverityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphServiceUpdateSeverity*) serviceUpdateSeverityWithEnumValue:(MSGraphServiceUpdateSeverityValue)val {

    switch(val)
    {
        case MSGraphServiceUpdateSeverityNormal:
            return [MSGraphServiceUpdateSeverity normal];
        case MSGraphServiceUpdateSeverityHigh:
            return [MSGraphServiceUpdateSeverity high];
        case MSGraphServiceUpdateSeverityCritical:
            return [MSGraphServiceUpdateSeverity critical];
        case MSGraphServiceUpdateSeverityUnknownFutureValue:
            return [MSGraphServiceUpdateSeverity unknownFutureValue];
        case MSGraphServiceUpdateSeverityEndOfEnum:
        default:
            return [MSGraphServiceUpdateSeverity UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphServiceUpdateSeverityNormal:
            return @"normal";
        case MSGraphServiceUpdateSeverityHigh:
            return @"high";
        case MSGraphServiceUpdateSeverityCritical:
            return @"critical";
        case MSGraphServiceUpdateSeverityUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphServiceUpdateSeverityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphServiceUpdateSeverityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphServiceUpdateSeverity)

- (MSGraphServiceUpdateSeverity*) toMSGraphServiceUpdateSeverity{

    if([self isEqualToString:@"normal"])
    {
          return [MSGraphServiceUpdateSeverity normal];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphServiceUpdateSeverity high];
    }
    else if([self isEqualToString:@"critical"])
    {
          return [MSGraphServiceUpdateSeverity critical];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphServiceUpdateSeverity unknownFutureValue];
    }
    else {
        return [MSGraphServiceUpdateSeverity UnknownEnumValue];
    }
}

@end
