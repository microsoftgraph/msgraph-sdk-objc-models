// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserConsentRequest()
{
    NSString* _reason;
    MSGraphApproval* _approval;
}
@end

@implementation MSGraphUserConsentRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userConsentRequest";
    }
    return self;
}
- (NSString*) reason
{
    if([[NSNull null] isEqual:self.dictionary[@"reason"]])
    {
        return nil;
    }   
    return self.dictionary[@"reason"];
}

- (void) setReason: (NSString*) val
{
    self.dictionary[@"reason"] = val;
}

- (MSGraphApproval*) approval
{
    if(!_approval){
        _approval = [[MSGraphApproval alloc] initWithDictionary: self.dictionary[@"approval"]];
    }
    return _approval;
}

- (void) setApproval: (MSGraphApproval*) val
{
    _approval = val;
    self.dictionary[@"approval"] = val;
}


@end
