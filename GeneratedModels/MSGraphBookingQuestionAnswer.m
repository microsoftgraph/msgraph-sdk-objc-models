// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingQuestionAnswer()
{
    NSString* _answer;
    MSGraphAnswerInputType* _answerInputType;
    NSArray* _answerOptions;
    BOOL _isRequired;
    NSString* _question;
    NSString* _questionId;
    NSArray* _selectedOptions;
}
@end

@implementation MSGraphBookingQuestionAnswer

- (NSString*) answer
{
    if([[NSNull null] isEqual:self.dictionary[@"answer"]])
    {
        return nil;
    }   
    return self.dictionary[@"answer"];
}

- (void) setAnswer: (NSString*) val
{
    self.dictionary[@"answer"] = val;
}

- (MSGraphAnswerInputType*) answerInputType
{
    if(!_answerInputType){
        _answerInputType = [self.dictionary[@"answerInputType"] toMSGraphAnswerInputType];
    }
    return _answerInputType;
}

- (void) setAnswerInputType: (MSGraphAnswerInputType*) val
{
    _answerInputType = val;
    self.dictionary[@"answerInputType"] = val;
}

- (NSArray*) answerOptions
{
    if([[NSNull null] isEqual:self.dictionary[@"answerOptions"]])
    {
        return nil;
    }   
    return self.dictionary[@"answerOptions"];
}

- (void) setAnswerOptions: (NSArray*) val
{
    self.dictionary[@"answerOptions"] = val;
}

- (BOOL) isRequired
{
    _isRequired = [self.dictionary[@"isRequired"] boolValue];
    return _isRequired;
}

- (void) setIsRequired: (BOOL) val
{
    _isRequired = val;
    self.dictionary[@"isRequired"] = @(val);
}

- (NSString*) question
{
    if([[NSNull null] isEqual:self.dictionary[@"question"]])
    {
        return nil;
    }   
    return self.dictionary[@"question"];
}

- (void) setQuestion: (NSString*) val
{
    self.dictionary[@"question"] = val;
}

- (NSString*) questionId
{
    if([[NSNull null] isEqual:self.dictionary[@"questionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"questionId"];
}

- (void) setQuestionId: (NSString*) val
{
    self.dictionary[@"questionId"] = val;
}

- (NSArray*) selectedOptions
{
    if([[NSNull null] isEqual:self.dictionary[@"selectedOptions"]])
    {
        return nil;
    }   
    return self.dictionary[@"selectedOptions"];
}

- (void) setSelectedOptions: (NSArray*) val
{
    self.dictionary[@"selectedOptions"] = val;
}

@end
