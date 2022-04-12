// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRiskUserActivity()
{
    MSGraphRiskDetail* _detail;
    NSArray* _riskEventTypes;
}
@end

@implementation MSGraphRiskUserActivity

- (MSGraphRiskDetail*) detail
{
    if(!_detail){
        _detail = [self.dictionary[@"detail"] toMSGraphRiskDetail];
    }
    return _detail;
}

- (void) setDetail: (MSGraphRiskDetail*) val
{
    _detail = val;
    self.dictionary[@"detail"] = val;
}

- (NSArray*) riskEventTypes
{
    if([[NSNull null] isEqual:self.dictionary[@"riskEventTypes"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskEventTypes"];
}

- (void) setRiskEventTypes: (NSArray*) val
{
    self.dictionary[@"riskEventTypes"] = val;
}

@end
