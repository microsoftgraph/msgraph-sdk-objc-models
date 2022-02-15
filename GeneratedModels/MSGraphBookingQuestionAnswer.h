// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAnswerInputType.h"


#import "MSObject.h"

@interface MSGraphBookingQuestionAnswer : MSObject

@property (nullable, nonatomic, setter=setAnswer:, getter=answer) NSString* answer;
@property (nullable, nonatomic, setter=setAnswerInputType:, getter=answerInputType) MSGraphAnswerInputType* answerInputType;
@property (nullable, nonatomic, setter=setAnswerOptions:, getter=answerOptions) NSArray* answerOptions;
@property (nonatomic, setter=setIsRequired:, getter=isRequired) BOOL isRequired;
@property (nullable, nonatomic, setter=setQuestion:, getter=question) NSString* question;
@property (nullable, nonatomic, setter=setQuestionId:, getter=questionId) NSString* questionId;
@property (nullable, nonatomic, setter=setSelectedOptions:, getter=selectedOptions) NSArray* selectedOptions;

@end
