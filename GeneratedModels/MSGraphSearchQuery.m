// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSearchQuery()
{
    NSString* _queryString;
}
@end

@implementation MSGraphSearchQuery

- (NSString*) queryString
{
    return self.dictionary[@"queryString"];
}

- (void) setQueryString: (NSString*) val
{
    self.dictionary[@"queryString"] = val;
}

@end
