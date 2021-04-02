// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProvisioningResult.h"

@interface MSGraphProvisioningResult () {
    MSGraphProvisioningResultValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphProvisioningResultValue enumValue;
@end

@implementation MSGraphProvisioningResult

+ (MSGraphProvisioningResult*) success {
    static MSGraphProvisioningResult *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphProvisioningResult alloc] init];
        _success.enumValue = MSGraphProvisioningResultSuccess;
    });
    return _success;
}
+ (MSGraphProvisioningResult*) failure {
    static MSGraphProvisioningResult *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphProvisioningResult alloc] init];
        _failure.enumValue = MSGraphProvisioningResultFailure;
    });
    return _failure;
}
+ (MSGraphProvisioningResult*) skipped {
    static MSGraphProvisioningResult *_skipped;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skipped = [[MSGraphProvisioningResult alloc] init];
        _skipped.enumValue = MSGraphProvisioningResultSkipped;
    });
    return _skipped;
}
+ (MSGraphProvisioningResult*) warning {
    static MSGraphProvisioningResult *_warning;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _warning = [[MSGraphProvisioningResult alloc] init];
        _warning.enumValue = MSGraphProvisioningResultWarning;
    });
    return _warning;
}
+ (MSGraphProvisioningResult*) unknownFutureValue {
    static MSGraphProvisioningResult *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphProvisioningResult alloc] init];
        _unknownFutureValue.enumValue = MSGraphProvisioningResultUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphProvisioningResult*) UnknownEnumValue {
    static MSGraphProvisioningResult *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphProvisioningResult alloc] init];
        _unknownValue.enumValue = MSGraphProvisioningResultEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphProvisioningResult*) provisioningResultWithEnumValue:(MSGraphProvisioningResultValue)val {

    switch(val)
    {
        case MSGraphProvisioningResultSuccess:
            return [MSGraphProvisioningResult success];
        case MSGraphProvisioningResultFailure:
            return [MSGraphProvisioningResult failure];
        case MSGraphProvisioningResultSkipped:
            return [MSGraphProvisioningResult skipped];
        case MSGraphProvisioningResultWarning:
            return [MSGraphProvisioningResult warning];
        case MSGraphProvisioningResultUnknownFutureValue:
            return [MSGraphProvisioningResult unknownFutureValue];
        case MSGraphProvisioningResultEndOfEnum:
        default:
            return [MSGraphProvisioningResult UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphProvisioningResultSuccess:
            return @"success";
        case MSGraphProvisioningResultFailure:
            return @"failure";
        case MSGraphProvisioningResultSkipped:
            return @"skipped";
        case MSGraphProvisioningResultWarning:
            return @"warning";
        case MSGraphProvisioningResultUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphProvisioningResultEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphProvisioningResultValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphProvisioningResult)

- (MSGraphProvisioningResult*) toMSGraphProvisioningResult{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphProvisioningResult success];
    }
    else if([self isEqualToString:@"failure"])
    {
          return [MSGraphProvisioningResult failure];
    }
    else if([self isEqualToString:@"skipped"])
    {
          return [MSGraphProvisioningResult skipped];
    }
    else if([self isEqualToString:@"warning"])
    {
          return [MSGraphProvisioningResult warning];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphProvisioningResult unknownFutureValue];
    }
    else {
        return [MSGraphProvisioningResult UnknownEnumValue];
    }
}

@end
