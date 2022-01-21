// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingQuestionAssignment()
{
    BOOL _isRequired;
    NSString* _questionId;
}
@end

@implementation MSGraphBookingQuestionAssignment

- (BOOL) isRequired
{
    _isRequired = [self.dictionary[@"isRequired"] boolValue];
    return _isRequired;
}

- (void) setIsRequired: (BOOL) val
{
    _isRequired = val;
    self.dictionary[@"isRequired"] = @(val);
}

- (NSString*) questionId
{
    return self.dictionary[@"questionId"];
}

- (void) setQuestionId: (NSString*) val
{
    self.dictionary[@"questionId"] = val;
}

@end
