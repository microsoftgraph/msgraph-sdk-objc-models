// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeOff()
{
    MSGraphTimeOffItem* _sharedTimeOff;
    MSGraphTimeOffItem* _draftTimeOff;
    NSString* _userId;
}
@end

@implementation MSGraphTimeOff

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.timeOff";
    }
    return self;
}
- (MSGraphTimeOffItem*) sharedTimeOff
{
    if(!_sharedTimeOff){
        _sharedTimeOff = [[MSGraphTimeOffItem alloc] initWithDictionary: self.dictionary[@"sharedTimeOff"]];
    }
    return _sharedTimeOff;
}

- (void) setSharedTimeOff: (MSGraphTimeOffItem*) val
{
    _sharedTimeOff = val;
    self.dictionary[@"sharedTimeOff"] = val;
}

- (MSGraphTimeOffItem*) draftTimeOff
{
    if(!_draftTimeOff){
        _draftTimeOff = [[MSGraphTimeOffItem alloc] initWithDictionary: self.dictionary[@"draftTimeOff"]];
    }
    return _draftTimeOff;
}

- (void) setDraftTimeOff: (MSGraphTimeOffItem*) val
{
    _draftTimeOff = val;
    self.dictionary[@"draftTimeOff"] = val;
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
