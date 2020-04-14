// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPolicyBase()
{
    NSString* _policyBaseDescription;
    NSString* _displayName;
}
@end

@implementation MSGraphPolicyBase

- (NSString*) policyBaseDescription
{
    return self.dictionary[@"description"];
}

- (void) setPolicyBaseDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}


@end
