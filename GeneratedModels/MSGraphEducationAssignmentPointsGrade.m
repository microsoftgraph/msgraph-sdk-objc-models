// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentPointsGrade()
{
    double _points;
}
@end

@implementation MSGraphEducationAssignmentPointsGrade

- (double) points
{
    _points = [self.dictionary[@"points"] floatValue];
    return _points;
}

- (void) setPoints: (double) val
{
    _points = val;
    self.dictionary[@"points"] = @(val);
}

@end
