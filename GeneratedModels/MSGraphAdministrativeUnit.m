// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAdministrativeUnit()
{
    NSString* _administrativeUnitDescription;
    NSString* _displayName;
    NSString* _visibility;
    NSArray* _members;
    NSArray* _scopedRoleMembers;
    NSArray* _extensions;
}
@end

@implementation MSGraphAdministrativeUnit

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.administrativeUnit";
    }
    return self;
}
- (NSString*) administrativeUnitDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAdministrativeUnitDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (NSString*) visibility
{
    if([[NSNull null] isEqual:self.dictionary[@"visibility"]])
    {
        return nil;
    }   
    return self.dictionary[@"visibility"];
}

- (void) setVisibility: (NSString*) val
{
    self.dictionary[@"visibility"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in members){
            [membersResult addObject:tempDirectoryObject];
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

- (NSArray*) scopedRoleMembers
{
    if(!_scopedRoleMembers){
        
    NSMutableArray *scopedRoleMembersResult = [NSMutableArray array];
    NSArray *scopedRoleMembers = self.dictionary[@"scopedRoleMembers"];

    if ([scopedRoleMembers isKindOfClass:[NSArray class]]){
        for (id tempScopedRoleMembership in scopedRoleMembers){
            [scopedRoleMembersResult addObject:tempScopedRoleMembership];
        }
    }

    _scopedRoleMembers = scopedRoleMembersResult;
        
    }
    return _scopedRoleMembers;
}

- (void) setScopedRoleMembers: (NSArray*) val
{
    _scopedRoleMembers = val;
    self.dictionary[@"scopedRoleMembers"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}


@end
