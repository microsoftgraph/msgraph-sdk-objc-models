// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAttestationLevel.h"

@interface MSGraphAttestationLevel () {
    MSGraphAttestationLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAttestationLevelValue enumValue;
@end

@implementation MSGraphAttestationLevel

+ (MSGraphAttestationLevel*) attested {
    static MSGraphAttestationLevel *_attested;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _attested = [[MSGraphAttestationLevel alloc] init];
        _attested.enumValue = MSGraphAttestationLevelAttested;
    });
    return _attested;
}
+ (MSGraphAttestationLevel*) notAttested {
    static MSGraphAttestationLevel *_notAttested;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notAttested = [[MSGraphAttestationLevel alloc] init];
        _notAttested.enumValue = MSGraphAttestationLevelNotAttested;
    });
    return _notAttested;
}
+ (MSGraphAttestationLevel*) unknownFutureValue {
    static MSGraphAttestationLevel *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAttestationLevel alloc] init];
        _unknownFutureValue.enumValue = MSGraphAttestationLevelUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAttestationLevel*) UnknownEnumValue {
    static MSGraphAttestationLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAttestationLevel alloc] init];
        _unknownValue.enumValue = MSGraphAttestationLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAttestationLevel*) attestationLevelWithEnumValue:(MSGraphAttestationLevelValue)val {

    switch(val)
    {
        case MSGraphAttestationLevelAttested:
            return [MSGraphAttestationLevel attested];
        case MSGraphAttestationLevelNotAttested:
            return [MSGraphAttestationLevel notAttested];
        case MSGraphAttestationLevelUnknownFutureValue:
            return [MSGraphAttestationLevel unknownFutureValue];
        case MSGraphAttestationLevelEndOfEnum:
        default:
            return [MSGraphAttestationLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAttestationLevelAttested:
            return @"attested";
        case MSGraphAttestationLevelNotAttested:
            return @"notAttested";
        case MSGraphAttestationLevelUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAttestationLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAttestationLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAttestationLevel)

- (MSGraphAttestationLevel*) toMSGraphAttestationLevel{

    if([self isEqualToString:@"attested"])
    {
          return [MSGraphAttestationLevel attested];
    }
    else if([self isEqualToString:@"notAttested"])
    {
          return [MSGraphAttestationLevel notAttested];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAttestationLevel unknownFutureValue];
    }
    else {
        return [MSGraphAttestationLevel UnknownEnumValue];
    }
}

@end
