// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationPointsOutcome()
{
    MSGraphEducationAssignmentPointsGrade* _points;
    MSGraphEducationAssignmentPointsGrade* _publishedPoints;
}
@end

@implementation MSGraphEducationPointsOutcome

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationPointsOutcome";
    }
    return self;
}
- (MSGraphEducationAssignmentPointsGrade*) points
{
    if(!_points){
        _points = [[MSGraphEducationAssignmentPointsGrade alloc] initWithDictionary: self.dictionary[@"points"]];
    }
    return _points;
}

- (void) setPoints: (MSGraphEducationAssignmentPointsGrade*) val
{
    _points = val;
    self.dictionary[@"points"] = val;
}

- (MSGraphEducationAssignmentPointsGrade*) publishedPoints
{
    if(!_publishedPoints){
        _publishedPoints = [[MSGraphEducationAssignmentPointsGrade alloc] initWithDictionary: self.dictionary[@"publishedPoints"]];
    }
    return _publishedPoints;
}

- (void) setPublishedPoints: (MSGraphEducationAssignmentPointsGrade*) val
{
    _publishedPoints = val;
    self.dictionary[@"publishedPoints"] = val;
}


@end
