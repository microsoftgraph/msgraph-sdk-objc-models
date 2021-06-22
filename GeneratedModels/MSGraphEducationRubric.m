// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationRubric()
{
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    MSGraphEducationItemBody* _educationRubricDescription;
    NSString* _displayName;
    MSGraphEducationAssignmentGradeType* _grading;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSArray* _levels;
    NSArray* _qualities;
}
@end

@implementation MSGraphEducationRubric

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationRubric";
    }
    return self;
}
- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphEducationItemBody*) educationRubricDescription
{
    if(!_educationRubricDescription){
        _educationRubricDescription = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"description"]];
    }
    return _educationRubricDescription;
}

- (void) setEducationRubricDescription: (MSGraphEducationItemBody*) val
{
    _educationRubricDescription = val;
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

- (MSGraphIdentitySet*) lastModifiedBy
{
    if(!_lastModifiedBy){
        _lastModifiedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"lastModifiedBy"]];
    }
    return _lastModifiedBy;
}

- (void) setLastModifiedBy: (MSGraphIdentitySet*) val
{
    _lastModifiedBy = val;
    self.dictionary[@"lastModifiedBy"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSArray*) levels
{
    if(!_levels){
        
    NSMutableArray *levelsResult = [NSMutableArray array];
    NSArray *levels = self.dictionary[@"levels"];

    if ([levels isKindOfClass:[NSArray class]]){
        for (id tempRubricLevel in levels){
            [levelsResult addObject:tempRubricLevel];
        }
    }

    _levels = levelsResult;
        
    }
    return _levels;
}

- (void) setLevels: (NSArray*) val
{
    _levels = val;
    self.dictionary[@"levels"] = val;
}

- (NSArray*) qualities
{
    if(!_qualities){
        
    NSMutableArray *qualitiesResult = [NSMutableArray array];
    NSArray *qualities = self.dictionary[@"qualities"];

    if ([qualities isKindOfClass:[NSArray class]]){
        for (id tempRubricQuality in qualities){
            [qualitiesResult addObject:tempRubricQuality];
        }
    }

    _qualities = qualitiesResult;
        
    }
    return _qualities;
}

- (void) setQualities: (NSArray*) val
{
    _qualities = val;
    self.dictionary[@"qualities"] = val;
}


@end
