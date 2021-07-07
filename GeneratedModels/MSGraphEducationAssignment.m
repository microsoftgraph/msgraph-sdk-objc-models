// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignment()
{
    MSGraphEducationAddedStudentAction* _addedStudentAction;
    BOOL _allowLateSubmissions;
    BOOL _allowStudentsToAddResourcesToSubmission;
    NSDate* _assignDateTime;
    NSDate* _assignedDateTime;
    MSGraphEducationAssignmentRecipient* _assignTo;
    NSString* _classId;
    NSDate* _closeDateTime;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    NSString* _displayName;
    NSDate* _dueDateTime;
    MSGraphEducationAssignmentGradeType* _grading;
    MSGraphEducationItemBody* _instructions;
    MSGraphIdentitySet* _lastModifiedBy;
    NSDate* _lastModifiedDateTime;
    NSString* _notificationChannelUrl;
    NSString* _resourcesFolderUrl;
    MSGraphEducationAssignmentStatus* _status;
    NSString* _webUrl;
    NSArray* _categories;
    NSArray* _resources;
    MSGraphEducationRubric* _rubric;
    NSArray* _submissions;
}
@end

@implementation MSGraphEducationAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationAssignment";
    }
    return self;
}
- (MSGraphEducationAddedStudentAction*) addedStudentAction
{
    if(!_addedStudentAction){
        _addedStudentAction = [self.dictionary[@"addedStudentAction"] toMSGraphEducationAddedStudentAction];
    }
    return _addedStudentAction;
}

- (void) setAddedStudentAction: (MSGraphEducationAddedStudentAction*) val
{
    _addedStudentAction = val;
    self.dictionary[@"addedStudentAction"] = val;
}

- (BOOL) allowLateSubmissions
{
    _allowLateSubmissions = [self.dictionary[@"allowLateSubmissions"] boolValue];
    return _allowLateSubmissions;
}

- (void) setAllowLateSubmissions: (BOOL) val
{
    _allowLateSubmissions = val;
    self.dictionary[@"allowLateSubmissions"] = @(val);
}

- (BOOL) allowStudentsToAddResourcesToSubmission
{
    _allowStudentsToAddResourcesToSubmission = [self.dictionary[@"allowStudentsToAddResourcesToSubmission"] boolValue];
    return _allowStudentsToAddResourcesToSubmission;
}

- (void) setAllowStudentsToAddResourcesToSubmission: (BOOL) val
{
    _allowStudentsToAddResourcesToSubmission = val;
    self.dictionary[@"allowStudentsToAddResourcesToSubmission"] = @(val);
}

- (NSDate*) assignDateTime
{
    if(!_assignDateTime){
        _assignDateTime = [NSDate ms_dateFromString: self.dictionary[@"assignDateTime"]];
    }
    return _assignDateTime;
}

- (void) setAssignDateTime: (NSDate*) val
{
    _assignDateTime = val;
    self.dictionary[@"assignDateTime"] = [val ms_toString];
}

- (NSDate*) assignedDateTime
{
    if(!_assignedDateTime){
        _assignedDateTime = [NSDate ms_dateFromString: self.dictionary[@"assignedDateTime"]];
    }
    return _assignedDateTime;
}

- (void) setAssignedDateTime: (NSDate*) val
{
    _assignedDateTime = val;
    self.dictionary[@"assignedDateTime"] = [val ms_toString];
}

- (MSGraphEducationAssignmentRecipient*) assignTo
{
    if(!_assignTo){
        _assignTo = [[MSGraphEducationAssignmentRecipient alloc] initWithDictionary: self.dictionary[@"assignTo"]];
    }
    return _assignTo;
}

- (void) setAssignTo: (MSGraphEducationAssignmentRecipient*) val
{
    _assignTo = val;
    self.dictionary[@"assignTo"] = val;
}

- (NSString*) classId
{
    if([[NSNull null] isEqual:self.dictionary[@"classId"]])
    {
        return nil;
    }   
    return self.dictionary[@"classId"];
}

- (void) setClassId: (NSString*) val
{
    self.dictionary[@"classId"] = val;
}

- (NSDate*) closeDateTime
{
    if(!_closeDateTime){
        _closeDateTime = [NSDate ms_dateFromString: self.dictionary[@"closeDateTime"]];
    }
    return _closeDateTime;
}

- (void) setCloseDateTime: (NSDate*) val
{
    _closeDateTime = val;
    self.dictionary[@"closeDateTime"] = [val ms_toString];
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

- (NSDate*) dueDateTime
{
    if(!_dueDateTime){
        _dueDateTime = [NSDate ms_dateFromString: self.dictionary[@"dueDateTime"]];
    }
    return _dueDateTime;
}

- (void) setDueDateTime: (NSDate*) val
{
    _dueDateTime = val;
    self.dictionary[@"dueDateTime"] = [val ms_toString];
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

- (MSGraphEducationItemBody*) instructions
{
    if(!_instructions){
        _instructions = [[MSGraphEducationItemBody alloc] initWithDictionary: self.dictionary[@"instructions"]];
    }
    return _instructions;
}

- (void) setInstructions: (MSGraphEducationItemBody*) val
{
    _instructions = val;
    self.dictionary[@"instructions"] = val;
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

- (NSString*) notificationChannelUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationChannelUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationChannelUrl"];
}

- (void) setNotificationChannelUrl: (NSString*) val
{
    self.dictionary[@"notificationChannelUrl"] = val;
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

- (MSGraphEducationAssignmentStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEducationAssignmentStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEducationAssignmentStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (NSArray*) categories
{
    if(!_categories){
        
    NSMutableArray *categoriesResult = [NSMutableArray array];
    NSArray *categories = self.dictionary[@"categories"];

    if ([categories isKindOfClass:[NSArray class]]){
        for (id tempEducationCategory in categories){
            [categoriesResult addObject:tempEducationCategory];
        }
    }

    _categories = categoriesResult;
        
    }
    return _categories;
}

- (void) setCategories: (NSArray*) val
{
    _categories = val;
    self.dictionary[@"categories"] = val;
}

- (NSArray*) resources
{
    if(!_resources){
        
    NSMutableArray *resourcesResult = [NSMutableArray array];
    NSArray *resources = self.dictionary[@"resources"];

    if ([resources isKindOfClass:[NSArray class]]){
        for (id tempEducationAssignmentResource in resources){
            [resourcesResult addObject:tempEducationAssignmentResource];
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

- (MSGraphEducationRubric*) rubric
{
    if(!_rubric){
        _rubric = [[MSGraphEducationRubric alloc] initWithDictionary: self.dictionary[@"rubric"]];
    }
    return _rubric;
}

- (void) setRubric: (MSGraphEducationRubric*) val
{
    _rubric = val;
    self.dictionary[@"rubric"] = val;
}

- (NSArray*) submissions
{
    if(!_submissions){
        
    NSMutableArray *submissionsResult = [NSMutableArray array];
    NSArray *submissions = self.dictionary[@"submissions"];

    if ([submissions isKindOfClass:[NSArray class]]){
        for (id tempEducationSubmission in submissions){
            [submissionsResult addObject:tempEducationSubmission];
        }
    }

    _submissions = submissionsResult;
        
    }
    return _submissions;
}

- (void) setSubmissions: (NSArray*) val
{
    _submissions = val;
    self.dictionary[@"submissions"] = val;
}


@end
