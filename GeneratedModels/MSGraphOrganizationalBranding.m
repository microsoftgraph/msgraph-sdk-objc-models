// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrganizationalBranding()
{
    NSArray* _localizations;
}
@end

@implementation MSGraphOrganizationalBranding

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.organizationalBranding";
    }
    return self;
}
- (NSArray*) localizations
{
    if(!_localizations){
        
    NSMutableArray *localizationsResult = [NSMutableArray array];
    NSArray *localizations = self.dictionary[@"localizations"];

    if ([localizations isKindOfClass:[NSArray class]]){
        for (id tempOrganizationalBrandingLocalization in localizations){
            [localizationsResult addObject:tempOrganizationalBrandingLocalization];
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
