// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSearchHitsContainer, MSGraphAlterationResponse, MSGraphResultTemplateDictionary; 


#import "MSObject.h"

@interface MSGraphSearchResponse : MSObject

@property (nullable, nonatomic, setter=setHitsContainers:, getter=hitsContainers) NSArray* hitsContainers;
@property (nullable, nonatomic, setter=setQueryAlterationResponse:, getter=queryAlterationResponse) MSGraphAlterationResponse* queryAlterationResponse;
@property (nullable, nonatomic, setter=setResultTemplates:, getter=resultTemplates) MSGraphResultTemplateDictionary* resultTemplates;
@property (nullable, nonatomic, setter=setSearchTerms:, getter=searchTerms) NSArray* searchTerms;

@end
