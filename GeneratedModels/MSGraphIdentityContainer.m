// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityContainer()
{
    MSGraphConditionalAccessRoot* _conditionalAccess;
}
@end

@implementation MSGraphIdentityContainer

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityContainer";
    }
    return self;
}
- (MSGraphConditionalAccessRoot*) conditionalAccess
{
    if(!_conditionalAccess){
        _conditionalAccess = [[MSGraphConditionalAccessRoot alloc] initWithDictionary: self.dictionary[@"conditionalAccess"]];
    }
    return _conditionalAccess;
}

- (void) setConditionalAccess: (MSGraphConditionalAccessRoot*) val
{
    _conditionalAccess = val;
    self.dictionary[@"conditionalAccess"] = val;
}


@end
