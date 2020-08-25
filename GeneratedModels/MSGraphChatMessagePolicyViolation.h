// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphChatMessagePolicyViolationPolicyTip; 
#import "MSGraphChatMessagePolicyViolationDlpActionTypes.h"
#import "MSGraphChatMessagePolicyViolationUserActionTypes.h"
#import "MSGraphChatMessagePolicyViolationVerdictDetailsTypes.h"


#import "MSObject.h"

@interface MSGraphChatMessagePolicyViolation : MSObject

@property (nullable, nonatomic, setter=setDlpAction:, getter=dlpAction) MSGraphChatMessagePolicyViolationDlpActionTypes* dlpAction;
@property (nullable, nonatomic, setter=setJustificationText:, getter=justificationText) NSString* justificationText;
@property (nullable, nonatomic, setter=setPolicyTip:, getter=policyTip) MSGraphChatMessagePolicyViolationPolicyTip* policyTip;
@property (nullable, nonatomic, setter=setUserAction:, getter=userAction) MSGraphChatMessagePolicyViolationUserActionTypes* userAction;
@property (nullable, nonatomic, setter=setVerdictDetails:, getter=verdictDetails) MSGraphChatMessagePolicyViolationVerdictDetailsTypes* verdictDetails;

@end
