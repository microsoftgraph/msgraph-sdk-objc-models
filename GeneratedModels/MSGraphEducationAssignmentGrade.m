// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentGrade()
{
    MSGraphIdentitySet* _gradedBy;
    NSDate* _gradedDateTime;
}
@end

@implementation MSGraphEducationAssignmentGrade

- (MSGraphIdentitySet*) gradedBy
{
    if(!_gradedBy){
        _gradedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"gradedBy"]];
    }
    return _gradedBy;
}

- (void) setGradedBy: (MSGraphIdentitySet*) val
{
    _gradedBy = val;
    self.dictionary[@"gradedBy"] = val;
}

- (NSDate*) gradedDateTime
{
    if(!_gradedDateTime){
        _gradedDateTime = [NSDate ms_dateFromString: self.dictionary[@"gradedDateTime"]];
    }
    return _gradedDateTime;
}

- (void) setGradedDateTime: (NSDate*) val
{
    _gradedDateTime = val;
    self.dictionary[@"gradedDateTime"] = [val ms_toString];
}

@end
