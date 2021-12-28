// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAnswerInputType.h"

@interface MSGraphAnswerInputType () {
    MSGraphAnswerInputTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAnswerInputTypeValue enumValue;
@end

@implementation MSGraphAnswerInputType

+ (MSGraphAnswerInputType*) text {
    static MSGraphAnswerInputType *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphAnswerInputType alloc] init];
        _text.enumValue = MSGraphAnswerInputTypeText;
    });
    return _text;
}
+ (MSGraphAnswerInputType*) radioButton {
    static MSGraphAnswerInputType *_radioButton;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _radioButton = [[MSGraphAnswerInputType alloc] init];
        _radioButton.enumValue = MSGraphAnswerInputTypeRadioButton;
    });
    return _radioButton;
}
+ (MSGraphAnswerInputType*) unknownFutureValue {
    static MSGraphAnswerInputType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAnswerInputType alloc] init];
        _unknownFutureValue.enumValue = MSGraphAnswerInputTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAnswerInputType*) UnknownEnumValue {
    static MSGraphAnswerInputType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAnswerInputType alloc] init];
        _unknownValue.enumValue = MSGraphAnswerInputTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAnswerInputType*) answerInputTypeWithEnumValue:(MSGraphAnswerInputTypeValue)val {

    switch(val)
    {
        case MSGraphAnswerInputTypeText:
            return [MSGraphAnswerInputType text];
        case MSGraphAnswerInputTypeRadioButton:
            return [MSGraphAnswerInputType radioButton];
        case MSGraphAnswerInputTypeUnknownFutureValue:
            return [MSGraphAnswerInputType unknownFutureValue];
        case MSGraphAnswerInputTypeEndOfEnum:
        default:
            return [MSGraphAnswerInputType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAnswerInputTypeText:
            return @"text";
        case MSGraphAnswerInputTypeRadioButton:
            return @"radioButton";
        case MSGraphAnswerInputTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAnswerInputTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAnswerInputTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAnswerInputType)

- (MSGraphAnswerInputType*) toMSGraphAnswerInputType{

    if([self isEqualToString:@"text"])
    {
          return [MSGraphAnswerInputType text];
    }
    else if([self isEqualToString:@"radioButton"])
    {
          return [MSGraphAnswerInputType radioButton];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAnswerInputType unknownFutureValue];
    }
    else {
        return [MSGraphAnswerInputType UnknownEnumValue];
    }
}

@end
