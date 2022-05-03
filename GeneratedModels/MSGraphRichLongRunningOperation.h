// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPublicError; 


#import "MSGraphLongRunningOperation.h"

@interface MSGraphRichLongRunningOperation : MSGraphLongRunningOperation

  @property (nullable, nonatomic, setter=setError:, getter=error) MSGraphPublicError* error;
    @property (nonatomic, setter=setPercentageComplete:, getter=percentageComplete) int32_t percentageComplete;
    @property (nullable, nonatomic, setter=setResourceId:, getter=resourceId) NSString* resourceId;
    @property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
  
@end
