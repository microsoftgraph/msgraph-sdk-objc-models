// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewInstance()
{
    NSDate* _endDateTime;
    MSGraphAccessReviewScope* _scope;
    NSDate* _startDateTime;
    NSString* _status;
    NSArray* _decisions;
}
@end

@implementation MSGraphAccessReviewInstance

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewInstance";
    }
    return self;
}
- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (MSGraphAccessReviewScope*) scope
{
    if(!_scope){
        _scope = [[MSGraphAccessReviewScope alloc] initWithDictionary: self.dictionary[@"scope"]];
    }
    return _scope;
}

- (void) setScope: (MSGraphAccessReviewScope*) val
{
    _scope = val;
    self.dictionary[@"scope"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}

- (NSArray*) decisions
{
    if(!_decisions){
        
    NSMutableArray *decisionsResult = [NSMutableArray array];
    NSArray *decisions = self.dictionary[@"decisions"];

    if ([decisions isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewInstanceDecisionItem in decisions){
            [decisionsResult addObject:tempAccessReviewInstanceDecisionItem];
        }
    }

    _decisions = decisionsResult;
        
    }
    return _decisions;
}

- (void) setDecisions: (NSArray*) val
{
    _decisions = val;
    self.dictionary[@"decisions"] = val;
}


@end
