// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrganizationalBrandingProperties()
{
    NSString* _backgroundColor;
    NSString* _backgroundImageRelativeUrl;
    NSString* _bannerLogoRelativeUrl;
    NSArray* _cdnList;
    NSString* _signInPageText;
    NSString* _squareLogoRelativeUrl;
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

- (NSString*) backgroundImageRelativeUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"backgroundImageRelativeUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"backgroundImageRelativeUrl"];
}

- (void) setBackgroundImageRelativeUrl: (NSString*) val
{
    self.dictionary[@"backgroundImageRelativeUrl"] = val;
}

- (NSString*) bannerLogoRelativeUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"bannerLogoRelativeUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"bannerLogoRelativeUrl"];
}

- (void) setBannerLogoRelativeUrl: (NSString*) val
{
    self.dictionary[@"bannerLogoRelativeUrl"] = val;
}

- (NSArray*) cdnList
{
    if([[NSNull null] isEqual:self.dictionary[@"cdnList"]])
    {
        return nil;
    }   
    return self.dictionary[@"cdnList"];
}

- (void) setCdnList: (NSArray*) val
{
    self.dictionary[@"cdnList"] = val;
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

- (NSString*) squareLogoRelativeUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"squareLogoRelativeUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"squareLogoRelativeUrl"];
}

- (void) setSquareLogoRelativeUrl: (NSString*) val
{
    self.dictionary[@"squareLogoRelativeUrl"] = val;
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
