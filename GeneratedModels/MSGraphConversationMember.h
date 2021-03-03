// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphConversationMember : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setRoles:, getter=roles) NSArray* roles;
    @property (nullable, nonatomic, setter=setVisibleHistoryStartDateTime:, getter=visibleHistoryStartDateTime) NSDate* visibleHistoryStartDateTime;
  
@end
