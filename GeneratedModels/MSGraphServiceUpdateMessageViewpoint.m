// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceUpdateMessageViewpoint()
{
    BOOL _isArchived;
    BOOL _isFavorited;
    BOOL _isRead;
}
@end

@implementation MSGraphServiceUpdateMessageViewpoint

- (BOOL) isArchived
{
    _isArchived = [self.dictionary[@"isArchived"] boolValue];
    return _isArchived;
}

- (void) setIsArchived: (BOOL) val
{
    _isArchived = val;
    self.dictionary[@"isArchived"] = @(val);
}

- (BOOL) isFavorited
{
    _isFavorited = [self.dictionary[@"isFavorited"] boolValue];
    return _isFavorited;
}

- (void) setIsFavorited: (BOOL) val
{
    _isFavorited = val;
    self.dictionary[@"isFavorited"] = @(val);
}

- (BOOL) isRead
{
    _isRead = [self.dictionary[@"isRead"] boolValue];
    return _isRead;
}

- (void) setIsRead: (BOOL) val
{
    _isRead = val;
    self.dictionary[@"isRead"] = @(val);
}

@end
