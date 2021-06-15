// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRubricQualityFeedbackModel()
{
    MSGraphEducationItemBody* _feedback;
    NSString* _qualityId;
}
@end

@implementation MSGraphRubricQualityFeedbackModel

- (MSGraphEducationItemBody*) feedback
{
    if(!_feedback){
        _feedback = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"feedback"]];
    }
    return _feedback;
}

- (void) setFeedback: (MSGraphEducationItemBody*) val
{
    _feedback = val;
    self.dictionary[@"feedback"] = val;
}

- (NSString*) qualityId
{
    if([[NSNull null] isEqual:self.dictionary[@"qualityId"]])
    {
        return nil;
    }   
    return self.dictionary[@"qualityId"];
}

- (void) setQualityId: (NSString*) val
{
    self.dictionary[@"qualityId"] = val;
}

@end
