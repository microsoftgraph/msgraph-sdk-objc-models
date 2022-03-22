// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentRequestorSettings()
{
    BOOL _allowCustomAssignmentSchedule;
    BOOL _enableOnBehalfRequestorsToAddAccess;
    BOOL _enableOnBehalfRequestorsToRemoveAccess;
    BOOL _enableOnBehalfRequestorsToUpdateAccess;
    BOOL _enableTargetsToSelfAddAccess;
    BOOL _enableTargetsToSelfRemoveAccess;
    BOOL _enableTargetsToSelfUpdateAccess;
    NSArray* _onBehalfRequestors;
}
@end

@implementation MSGraphAccessPackageAssignmentRequestorSettings

- (BOOL) allowCustomAssignmentSchedule
{
    _allowCustomAssignmentSchedule = [self.dictionary[@"allowCustomAssignmentSchedule"] boolValue];
    return _allowCustomAssignmentSchedule;
}

- (void) setAllowCustomAssignmentSchedule: (BOOL) val
{
    _allowCustomAssignmentSchedule = val;
    self.dictionary[@"allowCustomAssignmentSchedule"] = @(val);
}

- (BOOL) enableOnBehalfRequestorsToAddAccess
{
    _enableOnBehalfRequestorsToAddAccess = [self.dictionary[@"enableOnBehalfRequestorsToAddAccess"] boolValue];
    return _enableOnBehalfRequestorsToAddAccess;
}

- (void) setEnableOnBehalfRequestorsToAddAccess: (BOOL) val
{
    _enableOnBehalfRequestorsToAddAccess = val;
    self.dictionary[@"enableOnBehalfRequestorsToAddAccess"] = @(val);
}

- (BOOL) enableOnBehalfRequestorsToRemoveAccess
{
    _enableOnBehalfRequestorsToRemoveAccess = [self.dictionary[@"enableOnBehalfRequestorsToRemoveAccess"] boolValue];
    return _enableOnBehalfRequestorsToRemoveAccess;
}

- (void) setEnableOnBehalfRequestorsToRemoveAccess: (BOOL) val
{
    _enableOnBehalfRequestorsToRemoveAccess = val;
    self.dictionary[@"enableOnBehalfRequestorsToRemoveAccess"] = @(val);
}

- (BOOL) enableOnBehalfRequestorsToUpdateAccess
{
    _enableOnBehalfRequestorsToUpdateAccess = [self.dictionary[@"enableOnBehalfRequestorsToUpdateAccess"] boolValue];
    return _enableOnBehalfRequestorsToUpdateAccess;
}

- (void) setEnableOnBehalfRequestorsToUpdateAccess: (BOOL) val
{
    _enableOnBehalfRequestorsToUpdateAccess = val;
    self.dictionary[@"enableOnBehalfRequestorsToUpdateAccess"] = @(val);
}

- (BOOL) enableTargetsToSelfAddAccess
{
    _enableTargetsToSelfAddAccess = [self.dictionary[@"enableTargetsToSelfAddAccess"] boolValue];
    return _enableTargetsToSelfAddAccess;
}

- (void) setEnableTargetsToSelfAddAccess: (BOOL) val
{
    _enableTargetsToSelfAddAccess = val;
    self.dictionary[@"enableTargetsToSelfAddAccess"] = @(val);
}

- (BOOL) enableTargetsToSelfRemoveAccess
{
    _enableTargetsToSelfRemoveAccess = [self.dictionary[@"enableTargetsToSelfRemoveAccess"] boolValue];
    return _enableTargetsToSelfRemoveAccess;
}

- (void) setEnableTargetsToSelfRemoveAccess: (BOOL) val
{
    _enableTargetsToSelfRemoveAccess = val;
    self.dictionary[@"enableTargetsToSelfRemoveAccess"] = @(val);
}

- (BOOL) enableTargetsToSelfUpdateAccess
{
    _enableTargetsToSelfUpdateAccess = [self.dictionary[@"enableTargetsToSelfUpdateAccess"] boolValue];
    return _enableTargetsToSelfUpdateAccess;
}

- (void) setEnableTargetsToSelfUpdateAccess: (BOOL) val
{
    _enableTargetsToSelfUpdateAccess = val;
    self.dictionary[@"enableTargetsToSelfUpdateAccess"] = @(val);
}

- (NSArray*) onBehalfRequestors
{
    if(!_onBehalfRequestors){
        
    NSMutableArray *onBehalfRequestorsResult = [NSMutableArray array];
    NSArray *onBehalfRequestors = self.dictionary[@"onBehalfRequestors"];

    if ([onBehalfRequestors isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in onBehalfRequestors){
            [onBehalfRequestorsResult addObject:tempSubjectSet];
        }
    }

    _onBehalfRequestors = onBehalfRequestorsResult;
        
    }
    return _onBehalfRequestors;
}

- (void) setOnBehalfRequestors: (NSArray*) val
{
    _onBehalfRequestors = val;
    self.dictionary[@"onBehalfRequestors"] = val;
}

@end
