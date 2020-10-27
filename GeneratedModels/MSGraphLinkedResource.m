// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLinkedResource()
{
    NSString* _applicationName;
    NSString* _displayName;
    NSString* _externalId;
    NSString* _webUrl;
}
@end

@implementation MSGraphLinkedResource

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.linkedResource";
    }
    return self;
}
- (NSString*) applicationName
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationName"];
}

- (void) setApplicationName: (NSString*) val
{
    self.dictionary[@"applicationName"] = val;
}

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

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
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
