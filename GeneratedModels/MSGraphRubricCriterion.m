// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRubricCriterion()
{
    MSGraphEducationItemBody* _rubricCriterionDescription;
}
@end

@implementation MSGraphRubricCriterion

- (MSGraphEducationItemBody*) rubricCriterionDescription
{
    if(!_rubricCriterionDescription){
        _rubricCriterionDescription = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"description"]];
    }
    return _rubricCriterionDescription;
}

- (void) setRubricCriterionDescription: (MSGraphEducationItemBody*) val
{
    _rubricCriterionDescription = val;
    self.dictionary[@"description"] = val;
}

@end
