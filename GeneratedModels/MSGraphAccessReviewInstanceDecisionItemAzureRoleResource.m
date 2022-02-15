// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewInstanceDecisionItemAzureRoleResource()
{
    MSGraphAccessReviewInstanceDecisionItemResource* _scope;
}
@end

@implementation MSGraphAccessReviewInstanceDecisionItemAzureRoleResource

- (MSGraphAccessReviewInstanceDecisionItemResource*) scope
{
    if(!_scope){
        _scope = [[MSGraphAccessReviewInstanceDecisionItemResource alloc] initWithDictionary: self.dictionary[@"scope"]];
    }
    return _scope;
}

- (void) setScope: (MSGraphAccessReviewInstanceDecisionItemResource*) val
{
    _scope = val;
    self.dictionary[@"scope"] = val;
}

@end
