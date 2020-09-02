// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFileAssessmentRequest()
{
    NSString* _contentData;
    NSString* _fileName;
}
@end

@implementation MSGraphFileAssessmentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.fileAssessmentRequest";
    }
    return self;
}
- (NSString*) contentData
{
    return self.dictionary[@"contentData"];
}

- (void) setContentData: (NSString*) val
{
    self.dictionary[@"contentData"] = val;
}

- (NSString*) fileName
{
    return self.dictionary[@"fileName"];
}

- (void) setFileName: (NSString*) val
{
    self.dictionary[@"fileName"] = val;
}


@end
