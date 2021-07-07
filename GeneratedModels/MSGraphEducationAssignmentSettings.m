// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentSettings()
{
    BOOL _submissionAnimationDisabled;
}
@end

@implementation MSGraphEducationAssignmentSettings

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationAssignmentSettings";
    }
    return self;
}
- (BOOL) submissionAnimationDisabled
{
    _submissionAnimationDisabled = [self.dictionary[@"submissionAnimationDisabled"] boolValue];
    return _submissionAnimationDisabled;
}

- (void) setSubmissionAnimationDisabled: (BOOL) val
{
    _submissionAnimationDisabled = val;
    self.dictionary[@"submissionAnimationDisabled"] = @(val);
}


@end
