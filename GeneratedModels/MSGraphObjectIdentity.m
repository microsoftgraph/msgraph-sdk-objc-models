// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphObjectIdentity()
{
    NSString* _signInType;
    NSString* _issuer;
    NSString* _issuerAssignedId;
}
@end

@implementation MSGraphObjectIdentity

- (NSString*) signInType
{
    if([[NSNull null] isEqual:self.dictionary[@"signInType"]])
    {
        return nil;
    }   
    return self.dictionary[@"signInType"];
}

- (void) setSignInType: (NSString*) val
{
    self.dictionary[@"signInType"] = val;
}

- (NSString*) issuer
{
    if([[NSNull null] isEqual:self.dictionary[@"issuer"]])
    {
        return nil;
    }   
    return self.dictionary[@"issuer"];
}

- (void) setIssuer: (NSString*) val
{
    self.dictionary[@"issuer"] = val;
}

- (NSString*) issuerAssignedId
{
    if([[NSNull null] isEqual:self.dictionary[@"issuerAssignedId"]])
    {
        return nil;
    }   
    return self.dictionary[@"issuerAssignedId"];
}

- (void) setIssuerAssignedId: (NSString*) val
{
    self.dictionary[@"issuerAssignedId"] = val;
}

@end
