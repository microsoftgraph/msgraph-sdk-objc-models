// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPersistentBrowserSessionMode.h"


#import "MSGraphConditionalAccessSessionControl.h"

@interface MSGraphPersistentBrowserSessionControl : MSGraphConditionalAccessSessionControl

@property (nullable, nonatomic, setter=setMode:, getter=mode) MSGraphPersistentBrowserSessionMode* mode;

@end
