// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTabUpdatedEventMessageDetail()
{
    MSGraphIdentitySet* _initiator;
    NSString* _tabId;
}
@end

@implementation MSGraphTabUpdatedEventMessageDetail

- (MSGraphIdentitySet*) initiator
{
    if(!_initiator){
        _initiator = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"initiator"]];
    }
    return _initiator;
}

- (void) setInitiator: (MSGraphIdentitySet*) val
{
    _initiator = val;
    self.dictionary[@"initiator"] = val;
}

- (NSString*) tabId
{
    if([[NSNull null] isEqual:self.dictionary[@"tabId"]])
    {
        return nil;
    }   
    return self.dictionary[@"tabId"];
}

- (void) setTabId: (NSString*) val
{
    self.dictionary[@"tabId"] = val;
}

@end
