// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermsOfUseContainer()
{
    NSArray* _agreementAcceptances;
    NSArray* _agreements;
}
@end

@implementation MSGraphTermsOfUseContainer

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.termsOfUseContainer";
    }
    return self;
}
- (NSArray*) agreementAcceptances
{
    if(!_agreementAcceptances){
        
    NSMutableArray *agreementAcceptancesResult = [NSMutableArray array];
    NSArray *agreementAcceptances = self.dictionary[@"agreementAcceptances"];

    if ([agreementAcceptances isKindOfClass:[NSArray class]]){
        for (id tempAgreementAcceptance in agreementAcceptances){
            [agreementAcceptancesResult addObject:tempAgreementAcceptance];
        }
    }

    _agreementAcceptances = agreementAcceptancesResult;
        
    }
    return _agreementAcceptances;
}

- (void) setAgreementAcceptances: (NSArray*) val
{
    _agreementAcceptances = val;
    self.dictionary[@"agreementAcceptances"] = val;
}

- (NSArray*) agreements
{
    if(!_agreements){
        
    NSMutableArray *agreementsResult = [NSMutableArray array];
    NSArray *agreements = self.dictionary[@"agreements"];

    if ([agreements isKindOfClass:[NSArray class]]){
        for (id tempAgreement in agreements){
            [agreementsResult addObject:tempAgreement];
        }
    }

    _agreements = agreementsResult;
        
    }
    return _agreements;
}

- (void) setAgreements: (NSArray*) val
{
    _agreements = val;
    self.dictionary[@"agreements"] = val;
}


@end
