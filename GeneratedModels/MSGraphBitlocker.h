// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBitlockerRecoveryKey; 


#import "MSGraphEntity.h"

@interface MSGraphBitlocker : MSGraphEntity

  @property (nullable, nonatomic, setter=setRecoveryKeys:, getter=recoveryKeys) NSArray* recoveryKeys;
  
@end
