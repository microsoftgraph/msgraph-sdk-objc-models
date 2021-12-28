// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceHealthIssuePost()
{
    NSDate* _createdDateTime;
    MSGraphItemBody* _serviceHealthIssuePostDescription;
    MSGraphPostType* _postType;
}
@end

@implementation MSGraphServiceHealthIssuePost

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (MSGraphItemBody*) serviceHealthIssuePostDescription
{
    if(!_serviceHealthIssuePostDescription){
        _serviceHealthIssuePostDescription = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"description"]];
    }
    return _serviceHealthIssuePostDescription;
}

- (void) setServiceHealthIssuePostDescription: (MSGraphItemBody*) val
{
    _serviceHealthIssuePostDescription = val;
    self.dictionary[@"description"] = val;
}

- (MSGraphPostType*) postType
{
    if(!_postType){
        _postType = [self.dictionary[@"postType"] toMSGraphPostType];
    }
    return _postType;
}

- (void) setPostType: (MSGraphPostType*) val
{
    _postType = val;
    self.dictionary[@"postType"] = val;
}

@end
