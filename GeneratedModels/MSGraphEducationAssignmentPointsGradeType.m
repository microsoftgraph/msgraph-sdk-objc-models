// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentPointsGradeType()
{
    double _maxPoints;
}
@end

@implementation MSGraphEducationAssignmentPointsGradeType

- (double) maxPoints
{
    _maxPoints = [self.dictionary[@"maxPoints"] floatValue];
    return _maxPoints;
}

- (void) setMaxPoints: (double) val
{
    _maxPoints = val;
    self.dictionary[@"maxPoints"] = @(val);
}

@end
