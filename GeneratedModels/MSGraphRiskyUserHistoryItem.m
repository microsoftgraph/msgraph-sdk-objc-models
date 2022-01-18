// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRiskyUserHistoryItem()
{
    MSGraphRiskUserActivity* _activity;
    NSString* _initiatedBy;
    NSString* _userId;
}
@end

@implementation MSGraphRiskyUserHistoryItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.riskyUserHistoryItem";
    }
    return self;
}
- (MSGraphRiskUserActivity*) activity
{
    if(!_activity){
        _activity = [[MSGraphRiskUserActivity alloc] initWithDictionary: self.dictionary[@"activity"]];
    }
    return _activity;
}

- (void) setActivity: (MSGraphRiskUserActivity*) val
{
    _activity = val;
    self.dictionary[@"activity"] = val;
}

- (NSString*) initiatedBy
{
    if([[NSNull null] isEqual:self.dictionary[@"initiatedBy"]])
    {
        return nil;
    }   
    return self.dictionary[@"initiatedBy"];
}

- (void) setInitiatedBy: (NSString*) val
{
    self.dictionary[@"initiatedBy"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}


@end
