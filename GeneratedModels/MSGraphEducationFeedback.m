// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationFeedback()
{
    MSGraphIdentitySet* _feedbackBy;
    NSDate* _feedbackDateTime;
    MSGraphEducationItemBody* _text;
}
@end

@implementation MSGraphEducationFeedback

- (MSGraphIdentitySet*) feedbackBy
{
    if(!_feedbackBy){
        _feedbackBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"feedbackBy"]];
    }
    return _feedbackBy;
}

- (void) setFeedbackBy: (MSGraphIdentitySet*) val
{
    _feedbackBy = val;
    self.dictionary[@"feedbackBy"] = val;
}

- (NSDate*) feedbackDateTime
{
    if(!_feedbackDateTime){
        _feedbackDateTime = [NSDate ms_dateFromString: self.dictionary[@"feedbackDateTime"]];
    }
    return _feedbackDateTime;
}

- (void) setFeedbackDateTime: (NSDate*) val
{
    _feedbackDateTime = val;
    self.dictionary[@"feedbackDateTime"] = [val ms_toString];
}

- (MSGraphEducationItemBody*) text
{
    if(!_text){
        _text = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"text"]];
    }
    return _text;
}

- (void) setText: (MSGraphEducationItemBody*) val
{
    _text = val;
    self.dictionary[@"text"] = val;
}

@end
