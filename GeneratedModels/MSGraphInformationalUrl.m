// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInformationalUrl()
{
    NSString* _logoUrl;
    NSString* _marketingUrl;
    NSString* _privacyStatementUrl;
    NSString* _supportUrl;
    NSString* _termsOfServiceUrl;
}
@end

@implementation MSGraphInformationalUrl

- (NSString*) logoUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"logoUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"logoUrl"];
}

- (void) setLogoUrl: (NSString*) val
{
    self.dictionary[@"logoUrl"] = val;
}

- (NSString*) marketingUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"marketingUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"marketingUrl"];
}

- (void) setMarketingUrl: (NSString*) val
{
    self.dictionary[@"marketingUrl"] = val;
}

- (NSString*) privacyStatementUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"privacyStatementUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"privacyStatementUrl"];
}

- (void) setPrivacyStatementUrl: (NSString*) val
{
    self.dictionary[@"privacyStatementUrl"] = val;
}

- (NSString*) supportUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"supportUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"supportUrl"];
}

- (void) setSupportUrl: (NSString*) val
{
    self.dictionary[@"supportUrl"] = val;
}

- (NSString*) termsOfServiceUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"termsOfServiceUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"termsOfServiceUrl"];
}

- (void) setTermsOfServiceUrl: (NSString*) val
{
    self.dictionary[@"termsOfServiceUrl"] = val;
}

@end
