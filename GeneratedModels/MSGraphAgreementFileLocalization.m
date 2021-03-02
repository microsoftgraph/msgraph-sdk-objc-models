// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreementFileLocalization()
{
    NSArray* _versions;
}
@end

@implementation MSGraphAgreementFileLocalization

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.agreementFileLocalization";
    }
    return self;
}
- (NSArray*) versions
{
    if(!_versions){
        
    NSMutableArray *versionsResult = [NSMutableArray array];
    NSArray *versions = self.dictionary[@"versions"];

    if ([versions isKindOfClass:[NSArray class]]){
        for (id tempAgreementFileVersion in versions){
            [versionsResult addObject:tempAgreementFileVersion];
        }
    }

    _versions = versionsResult;
        
    }
    return _versions;
}

- (void) setVersions: (NSArray*) val
{
    _versions = val;
    self.dictionary[@"versions"] = val;
}


@end
