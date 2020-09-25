// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppReturnCodeType.h"


#import "MSObject.h"

@interface MSGraphWin32LobAppReturnCode : MSObject

@property (nonatomic, setter=setReturnCode:, getter=returnCode) int32_t returnCode;
@property (nonnull, nonatomic, setter=setType:, getter=type) MSGraphWin32LobAppReturnCodeType* type;

@end
