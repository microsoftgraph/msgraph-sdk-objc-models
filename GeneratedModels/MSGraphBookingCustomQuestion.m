// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingCustomQuestion()
{
    MSGraphAnswerInputType* _answerInputType;
    NSArray* _answerOptions;
    NSString* _displayName;
}
@end

@implementation MSGraphBookingCustomQuestion

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingCustomQuestion";
    }
    return self;
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

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}


@end
