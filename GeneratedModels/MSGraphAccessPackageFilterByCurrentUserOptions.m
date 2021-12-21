// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageFilterByCurrentUserOptions.h"

@interface MSGraphAccessPackageFilterByCurrentUserOptions () {
    MSGraphAccessPackageFilterByCurrentUserOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageFilterByCurrentUserOptionsValue enumValue;
@end

@implementation MSGraphAccessPackageFilterByCurrentUserOptions

+ (MSGraphAccessPackageFilterByCurrentUserOptions*) allowedRequestor {
    static MSGraphAccessPackageFilterByCurrentUserOptions *_allowedRequestor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowedRequestor = [[MSGraphAccessPackageFilterByCurrentUserOptions alloc] init];
        _allowedRequestor.enumValue = MSGraphAccessPackageFilterByCurrentUserOptionsAllowedRequestor;
    });
    return _allowedRequestor;
}
+ (MSGraphAccessPackageFilterByCurrentUserOptions*) unknownFutureValue {
    static MSGraphAccessPackageFilterByCurrentUserOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageFilterByCurrentUserOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageFilterByCurrentUserOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageFilterByCurrentUserOptions*) UnknownEnumValue {
    static MSGraphAccessPackageFilterByCurrentUserOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageFilterByCurrentUserOptions alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageFilterByCurrentUserOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageFilterByCurrentUserOptions*) accessPackageFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageFilterByCurrentUserOptionsValue)val {

    switch(val)
    {
        case MSGraphAccessPackageFilterByCurrentUserOptionsAllowedRequestor:
            return [MSGraphAccessPackageFilterByCurrentUserOptions allowedRequestor];
        case MSGraphAccessPackageFilterByCurrentUserOptionsUnknownFutureValue:
            return [MSGraphAccessPackageFilterByCurrentUserOptions unknownFutureValue];
        case MSGraphAccessPackageFilterByCurrentUserOptionsEndOfEnum:
        default:
            return [MSGraphAccessPackageFilterByCurrentUserOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageFilterByCurrentUserOptionsAllowedRequestor:
            return @"allowedRequestor";
        case MSGraphAccessPackageFilterByCurrentUserOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageFilterByCurrentUserOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageFilterByCurrentUserOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageFilterByCurrentUserOptions)

- (MSGraphAccessPackageFilterByCurrentUserOptions*) toMSGraphAccessPackageFilterByCurrentUserOptions{

    if([self isEqualToString:@"allowedRequestor"])
    {
          return [MSGraphAccessPackageFilterByCurrentUserOptions allowedRequestor];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageFilterByCurrentUserOptions unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageFilterByCurrentUserOptions UnknownEnumValue];
    }
}

@end
