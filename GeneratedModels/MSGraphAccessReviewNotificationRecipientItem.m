// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewNotificationRecipientItem()
{
    MSGraphAccessReviewNotificationRecipientScope* _notificationRecipientScope;
    NSString* _notificationTemplateType;
}
@end

@implementation MSGraphAccessReviewNotificationRecipientItem

- (MSGraphAccessReviewNotificationRecipientScope*) notificationRecipientScope
{
    if(!_notificationRecipientScope){
        _notificationRecipientScope = [[MSGraphAccessReviewNotificationRecipientScope alloc] initWithDictionary: self.dictionary[@"notificationRecipientScope"]];
    }
    return _notificationRecipientScope;
}

- (void) setNotificationRecipientScope: (MSGraphAccessReviewNotificationRecipientScope*) val
{
    _notificationRecipientScope = val;
    self.dictionary[@"notificationRecipientScope"] = val;
}

- (NSString*) notificationTemplateType
{
    if([[NSNull null] isEqual:self.dictionary[@"notificationTemplateType"]])
    {
        return nil;
    }   
    return self.dictionary[@"notificationTemplateType"];
}

- (void) setNotificationTemplateType: (NSString*) val
{
    self.dictionary[@"notificationTemplateType"] = val;
}

@end
