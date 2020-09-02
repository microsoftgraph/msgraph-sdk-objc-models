// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessagePolicyViolationPolicyTip()
{
    NSString* _complianceUrl;
    NSString* _generalText;
    NSArray* _matchedConditionDescriptions;
}
@end

@implementation MSGraphChatMessagePolicyViolationPolicyTip

- (NSString*) complianceUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"complianceUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"complianceUrl"];
}

- (void) setComplianceUrl: (NSString*) val
{
    self.dictionary[@"complianceUrl"] = val;
}

- (NSString*) generalText
{
    if([[NSNull null] isEqual:self.dictionary[@"generalText"]])
    {
        return nil;
    }   
    return self.dictionary[@"generalText"];
}

- (void) setGeneralText: (NSString*) val
{
    self.dictionary[@"generalText"] = val;
}

- (NSArray*) matchedConditionDescriptions
{
    if([[NSNull null] isEqual:self.dictionary[@"matchedConditionDescriptions"]])
    {
        return nil;
    }   
    return self.dictionary[@"matchedConditionDescriptions"];
}

- (void) setMatchedConditionDescriptions: (NSArray*) val
{
    self.dictionary[@"matchedConditionDescriptions"] = val;
}

@end
