// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatMessagePolicyViolation()
{
    MSGraphChatMessagePolicyViolationDlpActionTypes* _dlpAction;
    NSString* _justificationText;
    MSGraphChatMessagePolicyViolationPolicyTip* _policyTip;
    MSGraphChatMessagePolicyViolationUserActionTypes* _userAction;
    MSGraphChatMessagePolicyViolationVerdictDetailsTypes* _verdictDetails;
}
@end

@implementation MSGraphChatMessagePolicyViolation

- (MSGraphChatMessagePolicyViolationDlpActionTypes*) dlpAction
{
    if(!_dlpAction){
        _dlpAction = [self.dictionary[@"dlpAction"] toMSGraphChatMessagePolicyViolationDlpActionTypes];
    }
    return _dlpAction;
}

- (void) setDlpAction: (MSGraphChatMessagePolicyViolationDlpActionTypes*) val
{
    _dlpAction = val;
    self.dictionary[@"dlpAction"] = val;
}

- (NSString*) justificationText
{
    if([[NSNull null] isEqual:self.dictionary[@"justificationText"]])
    {
        return nil;
    }   
    return self.dictionary[@"justificationText"];
}

- (void) setJustificationText: (NSString*) val
{
    self.dictionary[@"justificationText"] = val;
}

- (MSGraphChatMessagePolicyViolationPolicyTip*) policyTip
{
    if(!_policyTip){
        _policyTip = [[MSGraphChatMessagePolicyViolationPolicyTip alloc] initWithDictionary: self.dictionary[@"policyTip"]];
    }
    return _policyTip;
}

- (void) setPolicyTip: (MSGraphChatMessagePolicyViolationPolicyTip*) val
{
    _policyTip = val;
    self.dictionary[@"policyTip"] = val;
}

- (MSGraphChatMessagePolicyViolationUserActionTypes*) userAction
{
    if(!_userAction){
        _userAction = [self.dictionary[@"userAction"] toMSGraphChatMessagePolicyViolationUserActionTypes];
    }
    return _userAction;
}

- (void) setUserAction: (MSGraphChatMessagePolicyViolationUserActionTypes*) val
{
    _userAction = val;
    self.dictionary[@"userAction"] = val;
}

- (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) verdictDetails
{
    if(!_verdictDetails){
        _verdictDetails = [self.dictionary[@"verdictDetails"] toMSGraphChatMessagePolicyViolationVerdictDetailsTypes];
    }
    return _verdictDetails;
}

- (void) setVerdictDetails: (MSGraphChatMessagePolicyViolationVerdictDetailsTypes*) val
{
    _verdictDetails = val;
    self.dictionary[@"verdictDetails"] = val;
}

@end
