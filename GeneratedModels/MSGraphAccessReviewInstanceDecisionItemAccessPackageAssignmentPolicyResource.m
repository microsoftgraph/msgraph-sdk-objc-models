// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource()
{
    NSString* _accessPackageDisplayName;
    NSString* _accessPackageId;
}
@end

@implementation MSGraphAccessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource

- (NSString*) accessPackageDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"accessPackageDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"accessPackageDisplayName"];
}

- (void) setAccessPackageDisplayName: (NSString*) val
{
    self.dictionary[@"accessPackageDisplayName"] = val;
}

- (NSString*) accessPackageId
{
    if([[NSNull null] isEqual:self.dictionary[@"accessPackageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"accessPackageId"];
}

- (void) setAccessPackageId: (NSString*) val
{
    self.dictionary[@"accessPackageId"] = val;
}

@end
