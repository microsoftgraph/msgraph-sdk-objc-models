// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProvisioningStatusErrorCategory.h"

@interface MSGraphProvisioningStatusErrorCategory () {
    MSGraphProvisioningStatusErrorCategoryValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphProvisioningStatusErrorCategoryValue enumValue;
@end

@implementation MSGraphProvisioningStatusErrorCategory

+ (MSGraphProvisioningStatusErrorCategory*) failure {
    static MSGraphProvisioningStatusErrorCategory *_failure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failure = [[MSGraphProvisioningStatusErrorCategory alloc] init];
        _failure.enumValue = MSGraphProvisioningStatusErrorCategoryFailure;
    });
    return _failure;
}
+ (MSGraphProvisioningStatusErrorCategory*) nonServiceFailure {
    static MSGraphProvisioningStatusErrorCategory *_nonServiceFailure;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nonServiceFailure = [[MSGraphProvisioningStatusErrorCategory alloc] init];
        _nonServiceFailure.enumValue = MSGraphProvisioningStatusErrorCategoryNonServiceFailure;
    });
    return _nonServiceFailure;
}
+ (MSGraphProvisioningStatusErrorCategory*) success {
    static MSGraphProvisioningStatusErrorCategory *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphProvisioningStatusErrorCategory alloc] init];
        _success.enumValue = MSGraphProvisioningStatusErrorCategorySuccess;
    });
    return _success;
}
+ (MSGraphProvisioningStatusErrorCategory*) unknownFutureValue {
    static MSGraphProvisioningStatusErrorCategory *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphProvisioningStatusErrorCategory alloc] init];
        _unknownFutureValue.enumValue = MSGraphProvisioningStatusErrorCategoryUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphProvisioningStatusErrorCategory*) UnknownEnumValue {
    static MSGraphProvisioningStatusErrorCategory *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphProvisioningStatusErrorCategory alloc] init];
        _unknownValue.enumValue = MSGraphProvisioningStatusErrorCategoryEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphProvisioningStatusErrorCategory*) provisioningStatusErrorCategoryWithEnumValue:(MSGraphProvisioningStatusErrorCategoryValue)val {

    switch(val)
    {
        case MSGraphProvisioningStatusErrorCategoryFailure:
            return [MSGraphProvisioningStatusErrorCategory failure];
        case MSGraphProvisioningStatusErrorCategoryNonServiceFailure:
            return [MSGraphProvisioningStatusErrorCategory nonServiceFailure];
        case MSGraphProvisioningStatusErrorCategorySuccess:
            return [MSGraphProvisioningStatusErrorCategory success];
        case MSGraphProvisioningStatusErrorCategoryUnknownFutureValue:
            return [MSGraphProvisioningStatusErrorCategory unknownFutureValue];
        case MSGraphProvisioningStatusErrorCategoryEndOfEnum:
        default:
            return [MSGraphProvisioningStatusErrorCategory UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphProvisioningStatusErrorCategoryFailure:
            return @"failure";
        case MSGraphProvisioningStatusErrorCategoryNonServiceFailure:
            return @"nonServiceFailure";
        case MSGraphProvisioningStatusErrorCategorySuccess:
            return @"success";
        case MSGraphProvisioningStatusErrorCategoryUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphProvisioningStatusErrorCategoryEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphProvisioningStatusErrorCategoryValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphProvisioningStatusErrorCategory)

- (MSGraphProvisioningStatusErrorCategory*) toMSGraphProvisioningStatusErrorCategory{

    if([self isEqualToString:@"failure"])
    {
          return [MSGraphProvisioningStatusErrorCategory failure];
    }
    else if([self isEqualToString:@"nonServiceFailure"])
    {
          return [MSGraphProvisioningStatusErrorCategory nonServiceFailure];
    }
    else if([self isEqualToString:@"success"])
    {
          return [MSGraphProvisioningStatusErrorCategory success];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphProvisioningStatusErrorCategory unknownFutureValue];
    }
    else {
        return [MSGraphProvisioningStatusErrorCategory UnknownEnumValue];
    }
}

@end
