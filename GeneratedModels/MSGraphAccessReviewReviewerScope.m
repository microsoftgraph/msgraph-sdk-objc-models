// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewReviewerScope()
{
    NSString* _query;
    NSString* _queryRoot;
    NSString* _queryType;
}
@end

@implementation MSGraphAccessReviewReviewerScope

- (NSString*) query
{
    if([[NSNull null] isEqual:self.dictionary[@"query"]])
    {
        return nil;
    }   
    return self.dictionary[@"query"];
}

- (void) setQuery: (NSString*) val
{
    self.dictionary[@"query"] = val;
}

- (NSString*) queryRoot
{
    if([[NSNull null] isEqual:self.dictionary[@"queryRoot"]])
    {
        return nil;
    }   
    return self.dictionary[@"queryRoot"];
}

- (void) setQueryRoot: (NSString*) val
{
    self.dictionary[@"queryRoot"] = val;
}

- (NSString*) queryType
{
    if([[NSNull null] isEqual:self.dictionary[@"queryType"]])
    {
        return nil;
    }   
    return self.dictionary[@"queryType"];
}

- (void) setQueryType: (NSString*) val
{
    self.dictionary[@"queryType"] = val;
}

@end
