// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConfigurationManagerCollectionAssignmentTarget()
{
    NSString* _collectionId;
}
@end

@implementation MSGraphConfigurationManagerCollectionAssignmentTarget

- (NSString*) collectionId
{
    if([[NSNull null] isEqual:self.dictionary[@"collectionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"collectionId"];
}

- (void) setCollectionId: (NSString*) val
{
    self.dictionary[@"collectionId"] = val;
}

@end
