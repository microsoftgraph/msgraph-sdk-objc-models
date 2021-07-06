// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationFeedbackOutcome()
{
    MSGraphEducationFeedback* _feedback;
    MSGraphEducationFeedback* _publishedFeedback;
}
@end

@implementation MSGraphEducationFeedbackOutcome

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationFeedbackOutcome";
    }
    return self;
}
- (MSGraphEducationFeedback*) feedback
{
    if(!_feedback){
        _feedback = [[MSGraphEducationFeedback alloc] initWithDictionary: self.dictionary[@"feedback"]];
    }
    return _feedback;
}

- (void) setFeedback: (MSGraphEducationFeedback*) val
{
    _feedback = val;
    self.dictionary[@"feedback"] = val;
}

- (MSGraphEducationFeedback*) publishedFeedback
{
    if(!_publishedFeedback){
        _publishedFeedback = [[MSGraphEducationFeedback alloc] initWithDictionary: self.dictionary[@"publishedFeedback"]];
    }
    return _publishedFeedback;
}

- (void) setPublishedFeedback: (MSGraphEducationFeedback*) val
{
    _publishedFeedback = val;
    self.dictionary[@"publishedFeedback"] = val;
}


@end
