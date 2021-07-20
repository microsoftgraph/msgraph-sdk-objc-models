// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsPstnCallDurationSource.h"

@interface MSGraphCallRecordsPstnCallDurationSource () {
    MSGraphCallRecordsPstnCallDurationSourceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsPstnCallDurationSourceValue enumValue;
@end

@implementation MSGraphCallRecordsPstnCallDurationSource

+ (MSGraphCallRecordsPstnCallDurationSource*) microsoft {
    static MSGraphCallRecordsPstnCallDurationSource *_microsoft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _microsoft = [[MSGraphCallRecordsPstnCallDurationSource alloc] init];
        _microsoft.enumValue = MSGraphCallRecordsPstnCallDurationSourceMicrosoft;
    });
    return _microsoft;
}
+ (MSGraphCallRecordsPstnCallDurationSource*) operator {
    static MSGraphCallRecordsPstnCallDurationSource *_operator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _operator = [[MSGraphCallRecordsPstnCallDurationSource alloc] init];
        _operator.enumValue = MSGraphCallRecordsPstnCallDurationSourceOperator;
    });
    return _operator;
}

+ (MSGraphCallRecordsPstnCallDurationSource*) UnknownEnumValue {
    static MSGraphCallRecordsPstnCallDurationSource *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsPstnCallDurationSource alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsPstnCallDurationSourceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsPstnCallDurationSource*) pstnCallDurationSourceWithEnumValue:(MSGraphCallRecordsPstnCallDurationSourceValue)val {

    switch(val)
    {
        case MSGraphCallRecordsPstnCallDurationSourceMicrosoft:
            return [MSGraphCallRecordsPstnCallDurationSource microsoft];
        case MSGraphCallRecordsPstnCallDurationSourceOperator:
            return [MSGraphCallRecordsPstnCallDurationSource operator];
        case MSGraphCallRecordsPstnCallDurationSourceEndOfEnum:
        default:
            return [MSGraphCallRecordsPstnCallDurationSource UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsPstnCallDurationSourceMicrosoft:
            return @"microsoft";
        case MSGraphCallRecordsPstnCallDurationSourceOperator:
            return @"operator";
        case MSGraphCallRecordsPstnCallDurationSourceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsPstnCallDurationSourceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsPstnCallDurationSource)

- (MSGraphCallRecordsPstnCallDurationSource*) toMSGraphCallRecordsPstnCallDurationSource{

    if([self isEqualToString:@"microsoft"])
    {
          return [MSGraphCallRecordsPstnCallDurationSource microsoft];
    }
    else if([self isEqualToString:@"operator"])
    {
          return [MSGraphCallRecordsPstnCallDurationSource operator];
    }
    else {
        return [MSGraphCallRecordsPstnCallDurationSource UnknownEnumValue];
    }
}

@end
