// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationSubmission()
{
    MSGraphIdentitySet* _reassignedBy;
    NSDate* _reassignedDateTime;
    MSGraphEducationSubmissionRecipient* _recipient;
    NSString* _resourcesFolderUrl;
    MSGraphIdentitySet* _returnedBy;
    NSDate* _returnedDateTime;
    MSGraphEducationSubmissionStatus* _status;
    MSGraphIdentitySet* _submittedBy;
    NSDate* _submittedDateTime;
    MSGraphIdentitySet* _unsubmittedBy;
    NSDate* _unsubmittedDateTime;
    NSArray* _outcomes;
    NSArray* _resources;
    NSArray* _submittedResources;
}
@end

@implementation MSGraphEducationSubmission

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationSubmission";
    }
    return self;
}
- (MSGraphIdentitySet*) reassignedBy
{
    if(!_reassignedBy){
        _reassignedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"reassignedBy"]];
    }
    return _reassignedBy;
}

- (void) setReassignedBy: (MSGraphIdentitySet*) val
{
    _reassignedBy = val;
    self.dictionary[@"reassignedBy"] = val;
}

- (NSDate*) reassignedDateTime
{
    if(!_reassignedDateTime){
        _reassignedDateTime = [NSDate ms_dateFromString: self.dictionary[@"reassignedDateTime"]];
    }
    return _reassignedDateTime;
}

- (void) setReassignedDateTime: (NSDate*) val
{
    _reassignedDateTime = val;
    self.dictionary[@"reassignedDateTime"] = [val ms_toString];
}

- (MSGraphEducationSubmissionRecipient*) recipient
{
    if(!_recipient){
        _recipient = [[MSGraphEducationSubmissionRecipient alloc] initWithDictionary: self.dictionary[@"recipient"]];
    }
    return _recipient;
}

- (void) setRecipient: (MSGraphEducationSubmissionRecipient*) val
{
    _recipient = val;
    self.dictionary[@"recipient"] = val;
}

- (NSString*) resourcesFolderUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"resourcesFolderUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourcesFolderUrl"];
}

- (void) setResourcesFolderUrl: (NSString*) val
{
    self.dictionary[@"resourcesFolderUrl"] = val;
}

- (MSGraphIdentitySet*) returnedBy
{
    if(!_returnedBy){
        _returnedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"returnedBy"]];
    }
    return _returnedBy;
}

- (void) setReturnedBy: (MSGraphIdentitySet*) val
{
    _returnedBy = val;
    self.dictionary[@"returnedBy"] = val;
}

- (NSDate*) returnedDateTime
{
    if(!_returnedDateTime){
        _returnedDateTime = [NSDate ms_dateFromString: self.dictionary[@"returnedDateTime"]];
    }
    return _returnedDateTime;
}

- (void) setReturnedDateTime: (NSDate*) val
{
    _returnedDateTime = val;
    self.dictionary[@"returnedDateTime"] = [val ms_toString];
}

- (MSGraphEducationSubmissionStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEducationSubmissionStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEducationSubmissionStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphIdentitySet*) submittedBy
{
    if(!_submittedBy){
        _submittedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"submittedBy"]];
    }
    return _submittedBy;
}

- (void) setSubmittedBy: (MSGraphIdentitySet*) val
{
    _submittedBy = val;
    self.dictionary[@"submittedBy"] = val;
}

- (NSDate*) submittedDateTime
{
    if(!_submittedDateTime){
        _submittedDateTime = [NSDate ms_dateFromString: self.dictionary[@"submittedDateTime"]];
    }
    return _submittedDateTime;
}

- (void) setSubmittedDateTime: (NSDate*) val
{
    _submittedDateTime = val;
    self.dictionary[@"submittedDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) unsubmittedBy
{
    if(!_unsubmittedBy){
        _unsubmittedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"unsubmittedBy"]];
    }
    return _unsubmittedBy;
}

- (void) setUnsubmittedBy: (MSGraphIdentitySet*) val
{
    _unsubmittedBy = val;
    self.dictionary[@"unsubmittedBy"] = val;
}

- (NSDate*) unsubmittedDateTime
{
    if(!_unsubmittedDateTime){
        _unsubmittedDateTime = [NSDate ms_dateFromString: self.dictionary[@"unsubmittedDateTime"]];
    }
    return _unsubmittedDateTime;
}

- (void) setUnsubmittedDateTime: (NSDate*) val
{
    _unsubmittedDateTime = val;
    self.dictionary[@"unsubmittedDateTime"] = [val ms_toString];
}

- (NSArray*) outcomes
{
    if(!_outcomes){
        
    NSMutableArray *outcomesResult = [NSMutableArray array];
    NSArray *outcomes = self.dictionary[@"outcomes"];

    if ([outcomes isKindOfClass:[NSArray class]]){
        for (id tempEducationOutcome in outcomes){
            [outcomesResult addObject:tempEducationOutcome];
        }
    }

    _outcomes = outcomesResult;
        
    }
    return _outcomes;
}

- (void) setOutcomes: (NSArray*) val
{
    _outcomes = val;
    self.dictionary[@"outcomes"] = val;
}

- (NSArray*) resources
{
    if(!_resources){
        
    NSMutableArray *resourcesResult = [NSMutableArray array];
    NSArray *resources = self.dictionary[@"resources"];

    if ([resources isKindOfClass:[NSArray class]]){
        for (id tempEducationSubmissionResource in resources){
            [resourcesResult addObject:tempEducationSubmissionResource];
        }
    }

    _resources = resourcesResult;
        
    }
    return _resources;
}

- (void) setResources: (NSArray*) val
{
    _resources = val;
    self.dictionary[@"resources"] = val;
}

- (NSArray*) submittedResources
{
    if(!_submittedResources){
        
    NSMutableArray *submittedResourcesResult = [NSMutableArray array];
    NSArray *submittedResources = self.dictionary[@"submittedResources"];

    if ([submittedResources isKindOfClass:[NSArray class]]){
        for (id tempEducationSubmissionResource in submittedResources){
            [submittedResourcesResult addObject:tempEducationSubmissionResource];
        }
    }

    _submittedResources = submittedResourcesResult;
        
    }
    return _submittedResources;
}

- (void) setSubmittedResources: (NSArray*) val
{
    _submittedResources = val;
    self.dictionary[@"submittedResources"] = val;
}


@end
