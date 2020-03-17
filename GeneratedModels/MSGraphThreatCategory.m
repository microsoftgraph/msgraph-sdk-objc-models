// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatCategory.h"

@interface MSGraphThreatCategory () {
    MSGraphThreatCategoryValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatCategoryValue enumValue;
@end

@implementation MSGraphThreatCategory

+ (MSGraphThreatCategory*) undefined {
    static MSGraphThreatCategory *_undefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _undefined = [[MSGraphThreatCategory alloc] init];
        _undefined.enumValue = MSGraphThreatCategoryUndefined;
    });
    return _undefined;
}
+ (MSGraphThreatCategory*) spam {
    static MSGraphThreatCategory *_spam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _spam = [[MSGraphThreatCategory alloc] init];
        _spam.enumValue = MSGraphThreatCategorySpam;
    });
    return _spam;
}
+ (MSGraphThreatCategory*) phishing {
    static MSGraphThreatCategory *_phishing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _phishing = [[MSGraphThreatCategory alloc] init];
        _phishing.enumValue = MSGraphThreatCategoryPhishing;
    });
    return _phishing;
}
+ (MSGraphThreatCategory*) malware {
    static MSGraphThreatCategory *_malware;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _malware = [[MSGraphThreatCategory alloc] init];
        _malware.enumValue = MSGraphThreatCategoryMalware;
    });
    return _malware;
}
+ (MSGraphThreatCategory*) unknownFutureValue {
    static MSGraphThreatCategory *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphThreatCategory alloc] init];
        _unknownFutureValue.enumValue = MSGraphThreatCategoryUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphThreatCategory*) UnknownEnumValue {
    static MSGraphThreatCategory *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatCategory alloc] init];
        _unknownValue.enumValue = MSGraphThreatCategoryEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatCategory*) threatCategoryWithEnumValue:(MSGraphThreatCategoryValue)val {

    switch(val)
    {
        case MSGraphThreatCategoryUndefined:
            return [MSGraphThreatCategory undefined];
        case MSGraphThreatCategorySpam:
            return [MSGraphThreatCategory spam];
        case MSGraphThreatCategoryPhishing:
            return [MSGraphThreatCategory phishing];
        case MSGraphThreatCategoryMalware:
            return [MSGraphThreatCategory malware];
        case MSGraphThreatCategoryUnknownFutureValue:
            return [MSGraphThreatCategory unknownFutureValue];
        case MSGraphThreatCategoryEndOfEnum:
        default:
            return [MSGraphThreatCategory UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatCategoryUndefined:
            return @"undefined";
        case MSGraphThreatCategorySpam:
            return @"spam";
        case MSGraphThreatCategoryPhishing:
            return @"phishing";
        case MSGraphThreatCategoryMalware:
            return @"malware";
        case MSGraphThreatCategoryUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphThreatCategoryEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatCategoryValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatCategory)

- (MSGraphThreatCategory*) toMSGraphThreatCategory{

    if([self isEqualToString:@"undefined"])
    {
          return [MSGraphThreatCategory undefined];
    }
    else if([self isEqualToString:@"spam"])
    {
          return [MSGraphThreatCategory spam];
    }
    else if([self isEqualToString:@"phishing"])
    {
          return [MSGraphThreatCategory phishing];
    }
    else if([self isEqualToString:@"malware"])
    {
          return [MSGraphThreatCategory malware];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphThreatCategory unknownFutureValue];
    }
    else {
        return [MSGraphThreatCategory UnknownEnumValue];
    }
}

@end
