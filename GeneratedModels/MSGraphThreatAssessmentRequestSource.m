// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatAssessmentRequestSource.h"

@interface MSGraphThreatAssessmentRequestSource () {
    MSGraphThreatAssessmentRequestSourceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatAssessmentRequestSourceValue enumValue;
@end

@implementation MSGraphThreatAssessmentRequestSource

+ (MSGraphThreatAssessmentRequestSource*) undefined {
    static MSGraphThreatAssessmentRequestSource *_undefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _undefined = [[MSGraphThreatAssessmentRequestSource alloc] init];
        _undefined.enumValue = MSGraphThreatAssessmentRequestSourceUndefined;
    });
    return _undefined;
}
+ (MSGraphThreatAssessmentRequestSource*) user {
    static MSGraphThreatAssessmentRequestSource *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphThreatAssessmentRequestSource alloc] init];
        _user.enumValue = MSGraphThreatAssessmentRequestSourceUser;
    });
    return _user;
}
+ (MSGraphThreatAssessmentRequestSource*) administrator {
    static MSGraphThreatAssessmentRequestSource *_administrator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _administrator = [[MSGraphThreatAssessmentRequestSource alloc] init];
        _administrator.enumValue = MSGraphThreatAssessmentRequestSourceAdministrator;
    });
    return _administrator;
}

+ (MSGraphThreatAssessmentRequestSource*) UnknownEnumValue {
    static MSGraphThreatAssessmentRequestSource *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatAssessmentRequestSource alloc] init];
        _unknownValue.enumValue = MSGraphThreatAssessmentRequestSourceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatAssessmentRequestSource*) threatAssessmentRequestSourceWithEnumValue:(MSGraphThreatAssessmentRequestSourceValue)val {

    switch(val)
    {
        case MSGraphThreatAssessmentRequestSourceUndefined:
            return [MSGraphThreatAssessmentRequestSource undefined];
        case MSGraphThreatAssessmentRequestSourceUser:
            return [MSGraphThreatAssessmentRequestSource user];
        case MSGraphThreatAssessmentRequestSourceAdministrator:
            return [MSGraphThreatAssessmentRequestSource administrator];
        case MSGraphThreatAssessmentRequestSourceEndOfEnum:
        default:
            return [MSGraphThreatAssessmentRequestSource UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatAssessmentRequestSourceUndefined:
            return @"undefined";
        case MSGraphThreatAssessmentRequestSourceUser:
            return @"user";
        case MSGraphThreatAssessmentRequestSourceAdministrator:
            return @"administrator";
        case MSGraphThreatAssessmentRequestSourceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatAssessmentRequestSourceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatAssessmentRequestSource)

- (MSGraphThreatAssessmentRequestSource*) toMSGraphThreatAssessmentRequestSource{

    if([self isEqualToString:@"undefined"])
    {
          return [MSGraphThreatAssessmentRequestSource undefined];
    }
    else if([self isEqualToString:@"user"])
    {
          return [MSGraphThreatAssessmentRequestSource user];
    }
    else if([self isEqualToString:@"administrator"])
    {
          return [MSGraphThreatAssessmentRequestSource administrator];
    }
    else {
        return [MSGraphThreatAssessmentRequestSource UnknownEnumValue];
    }
}

@end
