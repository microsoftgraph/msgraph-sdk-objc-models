// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyNotificationRule()
{
    BOOL _isDefaultRecipientsEnabled;
    NSString* _notificationLevel;
    NSArray* _notificationRecipients;
    NSString* _notificationType;
    NSString* _recipientType;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyNotificationRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyNotificationRule";
    }
    return self;
}
- (BOOL) isDefaultRecipientsEnabled
{
    _isDefaultRecipientsEnabled = [self.dictionary[@"isDefaultRecipientsEnabled"] boolValue];
    return _isDefaultRecipientsEnabled;
}

- (void) setIsDefaultRecipientsEnabled: (BOOL) val
{
    _isDefaultRecipientsEnabled = val;
    self.dictionary[@"isDefaultRecipientsEnabled"] = @(val);
}

- (NSString*) notificationLevel
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationLevel"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationLevel"];
}

- (void) setNotificationLevel: (NSString*) val
{
    self.dictionary[@"notificationLevel"] = val;
}

- (NSArray*) notificationRecipients
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationRecipients"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationRecipients"];
}

- (void) setNotificationRecipients: (NSArray*) val
{
    self.dictionary[@"notificationRecipients"] = val;
}

- (NSString*) notificationType
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationType"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationType"];
}

- (void) setNotificationType: (NSString*) val
{
    self.dictionary[@"notificationType"] = val;
}

- (NSString*) recipientType
{
    if([[NSNull null] isEqual:self.dictionary[@"recipientType"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipientType"];
}

- (void) setRecipientType: (NSString*) val
{
    self.dictionary[@"recipientType"] = val;
}


@end
