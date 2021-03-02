// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrganizationalBrandingProperties()
{
    NSString* _backgroundColor;
    NSString* _signInPageText;
    NSString* _usernameHintText;
}
@end

@implementation MSGraphOrganizationalBrandingProperties

- (NSString*) backgroundColor
{
    if([[NSNull null] isEqual:self.dictionary[@"backgroundColor"]])
    {
        return nil;
    }   
    return self.dictionary[@"backgroundColor"];
}

- (void) setBackgroundColor: (NSString*) val
{
    self.dictionary[@"backgroundColor"] = val;
}

- (NSString*) signInPageText
{
    if([[NSNull null] isEqual:self.dictionary[@"signInPageText"]])
    {
        return nil;
    }   
    return self.dictionary[@"signInPageText"];
}

- (void) setSignInPageText: (NSString*) val
{
    self.dictionary[@"signInPageText"] = val;
}

- (NSString*) usernameHintText
{
    if([[NSNull null] isEqual:self.dictionary[@"usernameHintText"]])
    {
        return nil;
    }   
    return self.dictionary[@"usernameHintText"];
}

- (void) setUsernameHintText: (NSString*) val
{
    self.dictionary[@"usernameHintText"] = val;
}


@end
