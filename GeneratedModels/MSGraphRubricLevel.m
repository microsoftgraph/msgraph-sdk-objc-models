// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRubricLevel()
{
    MSGraphEducationItemBody* _rubricLevelDescription;
    NSString* _displayName;
    MSGraphEducationAssignmentGradeType* _grading;
    NSString* _levelId;
}
@end

@implementation MSGraphRubricLevel

- (MSGraphEducationItemBody*) rubricLevelDescription
{
    if(!_rubricLevelDescription){
        _rubricLevelDescription = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"description"]];
    }
    return _rubricLevelDescription;
}

- (void) setRubricLevelDescription: (MSGraphEducationItemBody*) val
{
    _rubricLevelDescription = val;
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphEducationAssignmentGradeType*) grading
{
    if(!_grading){
        _grading = [[MSGraphEducationAssignmentGradeType alloc] initWithDictionary: self.dictionary[@"grading"]];
    }
    return _grading;
}

- (void) setGrading: (MSGraphEducationAssignmentGradeType*) val
{
    _grading = val;
    self.dictionary[@"grading"] = val;
}

- (NSString*) levelId
{
    if([[NSNull null] isEqual:self.dictionary[@"levelId"]])
    {
        return nil;
    }   
    return self.dictionary[@"levelId"];
}

- (void) setLevelId: (NSString*) val
{
    self.dictionary[@"levelId"] = val;
}

@end
