// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationPowerPointResource()
{
    NSString* _fileUrl;
}
@end

@implementation MSGraphEducationPowerPointResource

- (NSString*) fileUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"fileUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileUrl"];
}

- (void) setFileUrl: (NSString*) val
{
    self.dictionary[@"fileUrl"] = val;
}

@end
