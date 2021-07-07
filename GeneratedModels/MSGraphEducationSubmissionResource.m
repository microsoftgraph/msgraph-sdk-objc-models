// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationSubmissionResource()
{
    NSString* _assignmentResourceUrl;
    MSGraphEducationResource* _resource;
}
@end

@implementation MSGraphEducationSubmissionResource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationSubmissionResource";
    }
    return self;
}
- (NSString*) assignmentResourceUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"assignmentResourceUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignmentResourceUrl"];
}

- (void) setAssignmentResourceUrl: (NSString*) val
{
    self.dictionary[@"assignmentResourceUrl"] = val;
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
