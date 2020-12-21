// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphNotificationMessageTemplate()
{
    MSGraphNotificationTemplateBrandingOptions* _brandingOptions;
    NSString* _defaultLocale;
    NSString* _displayName;
    NSDate* _lastModifiedDateTime;
    NSArray* _localizedNotificationMessages;
}
@end

@implementation MSGraphNotificationMessageTemplate

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.notificationMessageTemplate";
    }
    return self;
}
- (MSGraphNotificationTemplateBrandingOptions*) brandingOptions
{
    if(!_brandingOptions){
        _brandingOptions = [self.dictionary[@"brandingOptions"] toMSGraphNotificationTemplateBrandingOptions];
    }
    return _brandingOptions;
}

- (void) setBrandingOptions: (MSGraphNotificationTemplateBrandingOptions*) val
{
    _brandingOptions = val;
    self.dictionary[@"brandingOptions"] = val;
}

- (NSString*) defaultLocale
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultLocale"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultLocale"];
}

- (void) setDefaultLocale: (NSString*) val
{
    self.dictionary[@"defaultLocale"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSArray*) localizedNotificationMessages
{
    if(!_localizedNotificationMessages){
        
    NSMutableArray *localizedNotificationMessagesResult = [NSMutableArray array];
    NSArray *localizedNotificationMessages = self.dictionary[@"localizedNotificationMessages"];

    if ([localizedNotificationMessages isKindOfClass:[NSArray class]]){
        for (id tempLocalizedNotificationMessage in localizedNotificationMessages){
            [localizedNotificationMessagesResult addObject:tempLocalizedNotificationMessage];
        }
    }

    _localizedNotificationMessages = localizedNotificationMessagesResult;
        
    }
    return _localizedNotificationMessages;
}

- (void) setLocalizedNotificationMessages: (NSArray*) val
{
    _localizedNotificationMessages = val;
    self.dictionary[@"localizedNotificationMessages"] = val;
}


@end
