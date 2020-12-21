// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharingLink()
{
    MSGraphIdentity* _application;
    BOOL _preventsDownload;
    NSString* _scope;
    NSString* _type;
    NSString* _webHtml;
    NSString* _webUrl;
}
@end

@implementation MSGraphSharingLink

- (MSGraphIdentity*) application
{
    if(!_application){
        _application = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"application"]];
    }
    return _application;
}

- (void) setApplication: (MSGraphIdentity*) val
{
    _application = val;
    self.dictionary[@"application"] = val;
}

- (BOOL) preventsDownload
{
    _preventsDownload = [self.dictionary[@"preventsDownload"] boolValue];
    return _preventsDownload;
}

- (void) setPreventsDownload: (BOOL) val
{
    _preventsDownload = val;
    self.dictionary[@"preventsDownload"] = @(val);
}

- (NSString*) scope
{
    if([[NSNull null] isEqual:self.dictionary[@"scope"]])
    {
        return nil;
    }   
    return self.dictionary[@"scope"];
}

- (void) setScope: (NSString*) val
{
    self.dictionary[@"scope"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

- (NSString*) webHtml
{
    if([[NSNull null] isEqual:self.dictionary[@"webHtml"]])
    {
        return nil;
    }   
    return self.dictionary[@"webHtml"];
}

- (void) setWebHtml: (NSString*) val
{
    self.dictionary[@"webHtml"] = val;
}

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

@end
