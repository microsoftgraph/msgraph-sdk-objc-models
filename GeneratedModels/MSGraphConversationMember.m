// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversationMember()
{
    NSString* _displayName;
    NSArray* _roles;
    NSDate* _visibleHistoryStartDateTime;
}
@end

@implementation MSGraphConversationMember

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

- (NSArray*) roles
{
    if([[NSNull null] isEqual:self.dictionary[@"roles"]])
    {
        return nil;
    }   
    return self.dictionary[@"roles"];
}

- (void) setRoles: (NSArray*) val
{
    self.dictionary[@"roles"] = val;
}

- (NSDate*) visibleHistoryStartDateTime
{
    if(!_visibleHistoryStartDateTime){
        _visibleHistoryStartDateTime = [NSDate ms_dateFromString: self.dictionary[@"visibleHistoryStartDateTime"]];
    }
    return _visibleHistoryStartDateTime;
}

- (void) setVisibleHistoryStartDateTime: (NSDate*) val
{
    _visibleHistoryStartDateTime = val;
    self.dictionary[@"visibleHistoryStartDateTime"] = [val ms_toString];
}


@end
