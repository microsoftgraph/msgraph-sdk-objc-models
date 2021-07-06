// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentResource()
{
    BOOL _distributeForStudentWork;
    MSGraphEducationResource* _resource;
}
@end

@implementation MSGraphEducationAssignmentResource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationAssignmentResource";
    }
    return self;
}
- (BOOL) distributeForStudentWork
{
    _distributeForStudentWork = [self.dictionary[@"distributeForStudentWork"] boolValue];
    return _distributeForStudentWork;
}

- (void) setDistributeForStudentWork: (BOOL) val
{
    _distributeForStudentWork = val;
    self.dictionary[@"distributeForStudentWork"] = @(val);
}

- (MSGraphEducationResource*) resource
{
    if(!_resource){
        _resource = [[MSGraphEducationResource alloc] initWithDictionary: self.dictionary[@"resource"]];
    }
    return _resource;
}

- (void) setResource: (MSGraphEducationResource*) val
{
    _resource = val;
    self.dictionary[@"resource"] = val;
}


@end
