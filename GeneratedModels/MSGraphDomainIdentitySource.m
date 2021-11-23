// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomainIdentitySource()
{
    NSString* _displayName;
    NSString* _domainName;
}
@end

@implementation MSGraphDomainIdentitySource

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) domainName
{
    if([[NSNull null] isEqual:self.dictionary[@"domainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"domainName"];
}

- (void) setDomainName: (NSString*) val
{
    self.dictionary[@"domainName"] = val;
}

@end
