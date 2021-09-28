// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSearchAlterationOptions : MSObject

@property (nonatomic, setter=setEnableModification:, getter=enableModification) BOOL enableModification;
@property (nonatomic, setter=setEnableSuggestion:, getter=enableSuggestion) BOOL enableSuggestion;

@end
