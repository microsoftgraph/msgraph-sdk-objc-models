// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDataSubject()
{
    NSString* _email;
    NSString* _firstName;
    NSString* _lastName;
    NSString* _residency;
}
@end

@implementation MSGraphDataSubject

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (NSString*) firstName
{
    if([[NSNull null] isEqual:self.dictionary[@"firstName"]])
    {
        return nil;
    }   
    return self.dictionary[@"firstName"];
}

- (void) setFirstName: (NSString*) val
{
    self.dictionary[@"firstName"] = val;
}

- (NSString*) lastName
{
    if([[NSNull null] isEqual:self.dictionary[@"lastName"]])
    {
        return nil;
    }   
    return self.dictionary[@"lastName"];
}

- (void) setLastName: (NSString*) val
{
    self.dictionary[@"lastName"] = val;
}

- (NSString*) residency
{
    if([[NSNull null] isEqual:self.dictionary[@"residency"]])
    {
        return nil;
    }   
    return self.dictionary[@"residency"];
}

- (void) setResidency: (NSString*) val
{
    self.dictionary[@"residency"] = val;
}

@end
