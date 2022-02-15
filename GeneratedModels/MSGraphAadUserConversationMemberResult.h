// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphActionResultPart.h"

@interface MSGraphAadUserConversationMemberResult : MSGraphActionResultPart

@property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;

@end
