// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationOnPremisesInfo()
{
    NSString* _immutableId;
}
@end

@implementation MSGraphEducationOnPremisesInfo

- (NSString*) immutableId
{
    if([[NSNull null] isEqual:self.dictionary[@"immutableId"]])
    {
        return nil;
    }   
    return self.dictionary[@"immutableId"];
}

- (void) setImmutableId: (NSString*) val
{
    self.dictionary[@"immutableId"] = val;
}

@end
