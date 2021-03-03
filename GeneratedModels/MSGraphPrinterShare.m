// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterShare()
{
    BOOL _allowAllUsers;
    NSDate* _createdDateTime;
    NSArray* _allowedGroups;
    NSArray* _allowedUsers;
    MSGraphPrinter* _printer;
}
@end

@implementation MSGraphPrinterShare

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printerShare";
    }
    return self;
}
- (BOOL) allowAllUsers
{
    _allowAllUsers = [self.dictionary[@"allowAllUsers"] boolValue];
    return _allowAllUsers;
}

- (void) setAllowAllUsers: (BOOL) val
{
    _allowAllUsers = val;
    self.dictionary[@"allowAllUsers"] = @(val);
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

- (NSArray*) allowedGroups
{
    if(!_allowedGroups){
        
    NSMutableArray *allowedGroupsResult = [NSMutableArray array];
    NSArray *allowedGroups = self.dictionary[@"allowedGroups"];

    if ([allowedGroups isKindOfClass:[NSArray class]]){
        for (id tempGroup in allowedGroups){
            [allowedGroupsResult addObject:tempGroup];
        }
    }

    _allowedGroups = allowedGroupsResult;
        
    }
    return _allowedGroups;
}

- (void) setAllowedGroups: (NSArray*) val
{
    _allowedGroups = val;
    self.dictionary[@"allowedGroups"] = val;
}

- (NSArray*) allowedUsers
{
    if(!_allowedUsers){
        
    NSMutableArray *allowedUsersResult = [NSMutableArray array];
    NSArray *allowedUsers = self.dictionary[@"allowedUsers"];

    if ([allowedUsers isKindOfClass:[NSArray class]]){
        for (id tempUser in allowedUsers){
            [allowedUsersResult addObject:tempUser];
        }
    }

    _allowedUsers = allowedUsersResult;
        
    }
    return _allowedUsers;
}

- (void) setAllowedUsers: (NSArray*) val
{
    _allowedUsers = val;
    self.dictionary[@"allowedUsers"] = val;
}

- (MSGraphPrinter*) printer
{
    if(!_printer){
        _printer = [[MSGraphPrinter alloc] initWithDictionary: self.dictionary[@"printer"]];
    }
    return _printer;
}

- (void) setPrinter: (MSGraphPrinter*) val
{
    _printer = val;
    self.dictionary[@"printer"] = val;
}


@end
