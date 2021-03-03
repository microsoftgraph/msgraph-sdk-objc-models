// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreementFileData()
{
    NSString* _data;
}
@end

@implementation MSGraphAgreementFileData

- (NSString*) data
{
    if([[NSNull null] isEqual:self.dictionary[@"data"]])
    {
        return nil;
    }   
    return self.dictionary[@"data"];
}

- (void) setData: (NSString*) val
{
    self.dictionary[@"data"] = val;
}

@end
