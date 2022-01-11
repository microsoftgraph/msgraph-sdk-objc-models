// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAnswerInputTypeValue){

	MSGraphAnswerInputTypeText = 0,
	MSGraphAnswerInputTypeRadioButton = 1,
	MSGraphAnswerInputTypeUnknownFutureValue = 2,
    MSGraphAnswerInputTypeEndOfEnum
};

@interface MSGraphAnswerInputType : NSObject

+(MSGraphAnswerInputType*) text;
+(MSGraphAnswerInputType*) radioButton;
+(MSGraphAnswerInputType*) unknownFutureValue;

+(MSGraphAnswerInputType*) UnknownEnumValue;

+(MSGraphAnswerInputType*) answerInputTypeWithEnumValue:(MSGraphAnswerInputTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAnswerInputTypeValue enumValue;

@end


@interface NSString (MSGraphAnswerInputType)

- (MSGraphAnswerInputType*) toMSGraphAnswerInputType;

@end
