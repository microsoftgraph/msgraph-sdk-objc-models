// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWebApplication()
{
    NSString* _homePageUrl;
    NSArray* _redirectUris;
    NSString* _logoutUrl;
    MSGraphImplicitGrantSettings* _implicitGrantSettings;
}
@end

@implementation MSGraphWebApplication

- (NSString*) homePageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"homePageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"homePageUrl"];
}

- (void) setHomePageUrl: (NSString*) val
{
    self.dictionary[@"homePageUrl"] = val;
}

- (NSArray*) redirectUris
{
    return self.dictionary[@"redirectUris"];
}

- (void) setRedirectUris: (NSArray*) val
{
    self.dictionary[@"redirectUris"] = val;
}

- (NSString*) logoutUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"logoutUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"logoutUrl"];
}

- (void) setLogoutUrl: (NSString*) val
{
    self.dictionary[@"logoutUrl"] = val;
}

- (MSGraphImplicitGrantSettings*) implicitGrantSettings
{
    if(!_implicitGrantSettings){
        _implicitGrantSettings = [[MSGraphImplicitGrantSettings alloc] initWithDictionary: self.dictionary[@"implicitGrantSettings"]];
    }
    return _implicitGrantSettings;
}

- (void) setImplicitGrantSettings: (MSGraphImplicitGrantSettings*) val
{
    _implicitGrantSettings = val;
    self.dictionary[@"implicitGrantSettings"] = val;
}

@end
