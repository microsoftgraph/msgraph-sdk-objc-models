// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageSubject()
{
    NSString* _displayName;
    NSString* _email;
    NSString* _objectId;
    NSString* _onPremisesSecurityIdentifier;
    NSString* _principalName;
    MSGraphAccessPackageSubjectType* _subjectType;
    MSGraphConnectedOrganization* _connectedOrganization;
}
@end

@implementation MSGraphAccessPackageSubject

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessPackageSubject";
    }
    return self;
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

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (NSString*) objectId
{
    if([[NSNull null] isEqual:self.dictionary[@"objectId"]])
    {
        return nil;
    }   
    return self.dictionary[@"objectId"];
}

- (void) setObjectId: (NSString*) val
{
    self.dictionary[@"objectId"] = val;
}

- (NSString*) onPremisesSecurityIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesSecurityIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesSecurityIdentifier"];
}

- (void) setOnPremisesSecurityIdentifier: (NSString*) val
{
    self.dictionary[@"onPremisesSecurityIdentifier"] = val;
}

- (NSString*) principalName
{
    if([[NSNull null] isEqual:self.dictionary[@"principalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalName"];
}

- (void) setPrincipalName: (NSString*) val
{
    self.dictionary[@"principalName"] = val;
}

- (MSGraphAccessPackageSubjectType*) subjectType
{
    if(!_subjectType){
        _subjectType = [self.dictionary[@"subjectType"] toMSGraphAccessPackageSubjectType];
    }
    return _subjectType;
}

- (void) setSubjectType: (MSGraphAccessPackageSubjectType*) val
{
    _subjectType = val;
    self.dictionary[@"subjectType"] = val;
}

- (MSGraphConnectedOrganization*) connectedOrganization
{
    if(!_connectedOrganization){
        _connectedOrganization = [[MSGraphConnectedOrganization alloc] initWithDictionary: self.dictionary[@"connectedOrganization"]];
    }
    return _connectedOrganization;
}

- (void) setConnectedOrganization: (MSGraphConnectedOrganization*) val
{
    _connectedOrganization = val;
    self.dictionary[@"connectedOrganization"] = val;
}


@end
