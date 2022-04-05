// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResultTemplateOption()
{
    BOOL _enableResultTemplate;
}
@end

@implementation MSGraphResultTemplateOption

- (BOOL) enableResultTemplate
{
    _enableResultTemplate = [self.dictionary[@"enableResultTemplate"] boolValue];
    return _enableResultTemplate;
}

- (void) setEnableResultTemplate: (BOOL) val
{
    _enableResultTemplate = val;
    self.dictionary[@"enableResultTemplate"] = @(val);
}

@end
