// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSchedulingGroup()
{
    NSString* _displayName;
    BOOL _isActive;
    NSArray* _userIds;
}
@end

@implementation MSGraphSchedulingGroup

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.schedulingGroup";
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

- (BOOL) isActive
{
    _isActive = [self.dictionary[@"isActive"] boolValue];
    return _isActive;
}

- (void) setIsActive: (BOOL) val
{
    _isActive = val;
    self.dictionary[@"isActive"] = @(val);
}

- (NSArray*) userIds
{
    if([[NSNull null] isEqual:self.dictionary[@"userIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"userIds"];
}

- (void) setUserIds: (NSArray*) val
{
    self.dictionary[@"userIds"] = val;
}


@end
