// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUrlAssessmentRequest()
{
    NSString* _url;
}
@end

@implementation MSGraphUrlAssessmentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.urlAssessmentRequest";
    }
    return self;
}
- (NSString*) url
{
    return self.dictionary[@"url"];
}

- (void) setUrl: (NSString*) val
{
    self.dictionary[@"url"] = val;
}


@end
