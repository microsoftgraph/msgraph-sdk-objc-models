// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreementFile()
{
    NSArray* _localizations;
}
@end

@implementation MSGraphAgreementFile

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.agreementFile";
    }
    return self;
}
- (NSArray*) localizations
{
    if(!_localizations){
        
    NSMutableArray *localizationsResult = [NSMutableArray array];
    NSArray *localizations = self.dictionary[@"localizations"];

    if ([localizations isKindOfClass:[NSArray class]]){
        for (id tempAgreementFileLocalization in localizations){
            [localizationsResult addObject:tempAgreementFileLocalization];
        }
    }

    _localizations = localizationsResult;
        
    }
    return _localizations;
}

- (void) setLocalizations: (NSArray*) val
{
    _localizations = val;
    self.dictionary[@"localizations"] = val;
}


@end
