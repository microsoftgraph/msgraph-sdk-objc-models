// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationClass()
{
    NSString* _classCode;
    MSGraphEducationCourse* _course;
    MSGraphIdentitySet* _createdBy;
    NSString* _educationClassDescription;
    NSString* _displayName;
    NSString* _externalId;
    NSString* _externalName;
    MSGraphEducationExternalSource* _externalSource;
    NSString* _externalSourceDetail;
    NSString* _grade;
    NSString* _mailNickname;
    MSGraphEducationTerm* _term;
    MSGraphGroup* _group;
    NSArray* _members;
    NSArray* _schools;
    NSArray* _teachers;
}
@end

@implementation MSGraphEducationClass

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationClass";
    }
    return self;
}
- (NSString*) classCode
{
    if([[NSNull null] isEqual:self.dictionary[@"classCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"classCode"];
}

- (void) setClassCode: (NSString*) val
{
    self.dictionary[@"classCode"] = val;
}

- (MSGraphEducationCourse*) course
{
    if(!_course){
        _course = [[MSGraphEducationCourse alloc] initWithDictionary: self.dictionary[@"course"]];
    }
    return _course;
}

- (void) setCourse: (MSGraphEducationCourse*) val
{
    _course = val;
    self.dictionary[@"course"] = val;
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

- (NSString*) educationClassDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setEducationClassDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (NSString*) externalName
{
    if([[NSNull null] isEqual:self.dictionary[@"externalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalName"];
}

- (void) setExternalName: (NSString*) val
{
    self.dictionary[@"externalName"] = val;
}

- (MSGraphEducationExternalSource*) externalSource
{
    if(!_externalSource){
        _externalSource = [self.dictionary[@"externalSource"] toMSGraphEducationExternalSource];
    }
    return _externalSource;
}

- (void) setExternalSource: (MSGraphEducationExternalSource*) val
{
    _externalSource = val;
    self.dictionary[@"externalSource"] = val;
}

- (NSString*) externalSourceDetail
{
    if([[NSNull null] isEqual:self.dictionary[@"externalSourceDetail"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalSourceDetail"];
}

- (void) setExternalSourceDetail: (NSString*) val
{
    self.dictionary[@"externalSourceDetail"] = val;
}

- (NSString*) grade
{
    if([[NSNull null] isEqual:self.dictionary[@"grade"]])
    {
        return nil;
    }   
    return self.dictionary[@"grade"];
}

- (void) setGrade: (NSString*) val
{
    self.dictionary[@"grade"] = val;
}

- (NSString*) mailNickname
{
    return self.dictionary[@"mailNickname"];
}

- (void) setMailNickname: (NSString*) val
{
    self.dictionary[@"mailNickname"] = val;
}

- (MSGraphEducationTerm*) term
{
    if(!_term){
        _term = [[MSGraphEducationTerm alloc] initWithDictionary: self.dictionary[@"term"]];
    }
    return _term;
}

- (void) setTerm: (MSGraphEducationTerm*) val
{
    _term = val;
    self.dictionary[@"term"] = val;
}

- (MSGraphGroup*) group
{
    if(!_group){
        _group = [[MSGraphGroup alloc] initWithDictionary: self.dictionary[@"group"]];
    }
    return _group;
}

- (void) setGroup: (MSGraphGroup*) val
{
    _group = val;
    self.dictionary[@"group"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempEducationUser in members){
            [membersResult addObject:tempEducationUser];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}

- (NSArray*) schools
{
    if(!_schools){
        
    NSMutableArray *schoolsResult = [NSMutableArray array];
    NSArray *schools = self.dictionary[@"schools"];

    if ([schools isKindOfClass:[NSArray class]]){
        for (id tempEducationSchool in schools){
            [schoolsResult addObject:tempEducationSchool];
        }
    }

    _schools = schoolsResult;
        
    }
    return _schools;
}

- (void) setSchools: (NSArray*) val
{
    _schools = val;
    self.dictionary[@"schools"] = val;
}

- (NSArray*) teachers
{
    if(!_teachers){
        
    NSMutableArray *teachersResult = [NSMutableArray array];
    NSArray *teachers = self.dictionary[@"teachers"];

    if ([teachers isKindOfClass:[NSArray class]]){
        for (id tempEducationUser in teachers){
            [teachersResult addObject:tempEducationUser];
        }
    }

    _teachers = teachersResult;
        
    }
    return _teachers;
}

- (void) setTeachers: (NSArray*) val
{
    _teachers = val;
    self.dictionary[@"teachers"] = val;
}


@end
