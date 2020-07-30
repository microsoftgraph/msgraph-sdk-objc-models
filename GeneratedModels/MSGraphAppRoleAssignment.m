// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppRoleAssignment()
{
    NSString* _appRoleId;
    NSDate* _createdDateTime;
    NSString* _principalDisplayName;
    NSString* _principalId;
    NSString* _principalType;
    NSString* _resourceDisplayName;
    NSString* _resourceId;
}
@end

@implementation MSGraphAppRoleAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.appRoleAssignment";
    }
    return self;
}
- (NSString*) appRoleId
{
    return self.dictionary[@"appRoleId"];
}

- (void) setAppRoleId: (NSString*) val
{
    self.dictionary[@"appRoleId"] = val;
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

- (NSString*) principalDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"principalDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalDisplayName"];
}

- (void) setPrincipalDisplayName: (NSString*) val
{
    self.dictionary[@"principalDisplayName"] = val;
}

- (NSString*) principalId
{
    if([[NSNull null] isEqual:self.dictionary[@"principalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalId"];
}

- (void) setPrincipalId: (NSString*) val
{
    self.dictionary[@"principalId"] = val;
}

- (NSString*) principalType
{
    if([[NSNull null] isEqual:self.dictionary[@"principalType"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalType"];
}

- (void) setPrincipalType: (NSString*) val
{
    self.dictionary[@"principalType"] = val;
}

- (NSString*) resourceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceDisplayName"];
}

- (void) setResourceDisplayName: (NSString*) val
{
    self.dictionary[@"resourceDisplayName"] = val;
}

- (NSString*) resourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}


@end
