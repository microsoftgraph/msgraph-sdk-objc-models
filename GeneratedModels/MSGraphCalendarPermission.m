// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalendarPermission()
{
    NSArray* _allowedRoles;
    MSGraphEmailAddress* _emailAddress;
    BOOL _isInsideOrganization;
    BOOL _isRemovable;
    MSGraphCalendarRoleType* _role;
}
@end

@implementation MSGraphCalendarPermission

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.calendarPermission";
    }
    return self;
}
- (NSArray*) allowedRoles
{
    if(!_allowedRoles){
        
    NSMutableArray *allowedRolesResult = [NSMutableArray array];
    NSArray *allowedRoles = self.dictionary[@"allowedRoles"];

    if ([allowedRoles isKindOfClass:[NSArray class]]){
        for (id tempCalendarRoleType in allowedRoles){
            [allowedRolesResult addObject:tempCalendarRoleType];
        }
    }

    _allowedRoles = allowedRolesResult;
        
    }
    return _allowedRoles;
}

- (void) setAllowedRoles: (NSArray*) val
{
    _allowedRoles = val;
    self.dictionary[@"allowedRoles"] = val;
}

- (MSGraphEmailAddress*) emailAddress
{
    if(!_emailAddress){
        _emailAddress = [[MSGraphEmailAddress alloc] initWithDictionary: self.dictionary[@"emailAddress"]];
    }
    return _emailAddress;
}

- (void) setEmailAddress: (MSGraphEmailAddress*) val
{
    _emailAddress = val;
    self.dictionary[@"emailAddress"] = val;
}

- (BOOL) isInsideOrganization
{
    _isInsideOrganization = [self.dictionary[@"isInsideOrganization"] boolValue];
    return _isInsideOrganization;
}

- (void) setIsInsideOrganization: (BOOL) val
{
    _isInsideOrganization = val;
    self.dictionary[@"isInsideOrganization"] = @(val);
}

- (BOOL) isRemovable
{
    _isRemovable = [self.dictionary[@"isRemovable"] boolValue];
    return _isRemovable;
}

- (void) setIsRemovable: (BOOL) val
{
    _isRemovable = val;
    self.dictionary[@"isRemovable"] = @(val);
}

- (MSGraphCalendarRoleType*) role
{
    if(!_role){
        _role = [self.dictionary[@"role"] toMSGraphCalendarRoleType];
    }
    return _role;
}

- (void) setRole: (MSGraphCalendarRoleType*) val
{
    _role = val;
    self.dictionary[@"role"] = val;
}


@end
