// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatAssessmentResultType.h"

@interface MSGraphThreatAssessmentResultType () {
    MSGraphThreatAssessmentResultTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatAssessmentResultTypeValue enumValue;
@end

@implementation MSGraphThreatAssessmentResultType

+ (MSGraphThreatAssessmentResultType*) checkPolicy {
    static MSGraphThreatAssessmentResultType *_checkPolicy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _checkPolicy = [[MSGraphThreatAssessmentResultType alloc] init];
        _checkPolicy.enumValue = MSGraphThreatAssessmentResultTypeCheckPolicy;
    });
    return _checkPolicy;
}
+ (MSGraphThreatAssessmentResultType*) rescan {
    static MSGraphThreatAssessmentResultType *_rescan;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rescan = [[MSGraphThreatAssessmentResultType alloc] init];
        _rescan.enumValue = MSGraphThreatAssessmentResultTypeRescan;
    });
    return _rescan;
}
+ (MSGraphThreatAssessmentResultType*) unknownFutureValue {
    static MSGraphThreatAssessmentResultType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphThreatAssessmentResultType alloc] init];
        _unknownFutureValue.enumValue = MSGraphThreatAssessmentResultTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphThreatAssessmentResultType*) UnknownEnumValue {
    static MSGraphThreatAssessmentResultType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatAssessmentResultType alloc] init];
        _unknownValue.enumValue = MSGraphThreatAssessmentResultTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatAssessmentResultType*) threatAssessmentResultTypeWithEnumValue:(MSGraphThreatAssessmentResultTypeValue)val {

    switch(val)
    {
        case MSGraphThreatAssessmentResultTypeCheckPolicy:
            return [MSGraphThreatAssessmentResultType checkPolicy];
        case MSGraphThreatAssessmentResultTypeRescan:
            return [MSGraphThreatAssessmentResultType rescan];
        case MSGraphThreatAssessmentResultTypeUnknownFutureValue:
            return [MSGraphThreatAssessmentResultType unknownFutureValue];
        case MSGraphThreatAssessmentResultTypeEndOfEnum:
        default:
            return [MSGraphThreatAssessmentResultType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatAssessmentResultTypeCheckPolicy:
            return @"checkPolicy";
        case MSGraphThreatAssessmentResultTypeRescan:
            return @"rescan";
        case MSGraphThreatAssessmentResultTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphThreatAssessmentResultTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatAssessmentResultTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatAssessmentResultType)

- (MSGraphThreatAssessmentResultType*) toMSGraphThreatAssessmentResultType{

    if([self isEqualToString:@"checkPolicy"])
    {
          return [MSGraphThreatAssessmentResultType checkPolicy];
    }
    else if([self isEqualToString:@"rescan"])
    {
          return [MSGraphThreatAssessmentResultType rescan];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphThreatAssessmentResultType unknownFutureValue];
    }
    else {
        return [MSGraphThreatAssessmentResultType UnknownEnumValue];
    }
}

@end
