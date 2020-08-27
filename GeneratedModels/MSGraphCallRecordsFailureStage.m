// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsFailureStage.h"

@interface MSGraphCallRecordsFailureStage () {
    MSGraphCallRecordsFailureStageValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsFailureStageValue enumValue;
@end

@implementation MSGraphCallRecordsFailureStage

+ (MSGraphCallRecordsFailureStage*) unknown {
    static MSGraphCallRecordsFailureStage *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsFailureStage alloc] init];
        _unknown.enumValue = MSGraphCallRecordsFailureStageUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsFailureStage*) callSetup {
    static MSGraphCallRecordsFailureStage *_callSetup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _callSetup = [[MSGraphCallRecordsFailureStage alloc] init];
        _callSetup.enumValue = MSGraphCallRecordsFailureStageCallSetup;
    });
    return _callSetup;
}
+ (MSGraphCallRecordsFailureStage*) midcall {
    static MSGraphCallRecordsFailureStage *_midcall;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _midcall = [[MSGraphCallRecordsFailureStage alloc] init];
        _midcall.enumValue = MSGraphCallRecordsFailureStageMidcall;
    });
    return _midcall;
}
+ (MSGraphCallRecordsFailureStage*) unknownFutureValue {
    static MSGraphCallRecordsFailureStage *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsFailureStage alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsFailureStageUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsFailureStage*) UnknownEnumValue {
    static MSGraphCallRecordsFailureStage *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsFailureStage alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsFailureStageEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsFailureStage*) failureStageWithEnumValue:(MSGraphCallRecordsFailureStageValue)val {

    switch(val)
    {
        case MSGraphCallRecordsFailureStageUnknown:
            return [MSGraphCallRecordsFailureStage unknown];
        case MSGraphCallRecordsFailureStageCallSetup:
            return [MSGraphCallRecordsFailureStage callSetup];
        case MSGraphCallRecordsFailureStageMidcall:
            return [MSGraphCallRecordsFailureStage midcall];
        case MSGraphCallRecordsFailureStageUnknownFutureValue:
            return [MSGraphCallRecordsFailureStage unknownFutureValue];
        case MSGraphCallRecordsFailureStageEndOfEnum:
        default:
            return [MSGraphCallRecordsFailureStage UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsFailureStageUnknown:
            return @"unknown";
        case MSGraphCallRecordsFailureStageCallSetup:
            return @"callSetup";
        case MSGraphCallRecordsFailureStageMidcall:
            return @"midcall";
        case MSGraphCallRecordsFailureStageUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsFailureStageEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsFailureStageValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsFailureStage)

- (MSGraphCallRecordsFailureStage*) toMSGraphCallRecordsFailureStage{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsFailureStage unknown];
    }
    else if([self isEqualToString:@"callSetup"])
    {
          return [MSGraphCallRecordsFailureStage callSetup];
    }
    else if([self isEqualToString:@"midcall"])
    {
          return [MSGraphCallRecordsFailureStage midcall];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsFailureStage unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsFailureStage UnknownEnumValue];
    }
}

@end
