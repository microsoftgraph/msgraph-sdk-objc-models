// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphProvisionedIdentity()
{
    MSGraphDetailsInfo* _details;
    NSString* _identityType;
}
@end

@implementation MSGraphProvisionedIdentity

- (MSGraphDetailsInfo*) details
{
    if(!_details){
        _details = [[MSGraphDetailsInfo alloc] initWithDictionary: self.dictionary[@"details"]];
    }
    return _details;
}

- (void) setDetails: (MSGraphDetailsInfo*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (NSString*) identityType
{
    if([[NSNull null] isEqual:self.dictionary[@"identityType"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityType"];
}

- (void) setIdentityType: (NSString*) val
{
    self.dictionary[@"identityType"] = val;
}

@end
