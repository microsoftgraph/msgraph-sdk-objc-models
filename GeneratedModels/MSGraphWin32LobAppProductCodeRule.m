// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppProductCodeRule()
{
    NSString* _productCode;
    NSString* _productVersion;
    MSGraphWin32LobAppRuleOperator* _productVersionOperator;
}
@end

@implementation MSGraphWin32LobAppProductCodeRule

- (NSString*) productCode
{
    if([[NSNull null] isEqual:self.dictionary[@"productCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"productCode"];
}

- (void) setProductCode: (NSString*) val
{
    self.dictionary[@"productCode"] = val;
}

- (NSString*) productVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"productVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"productVersion"];
}

- (void) setProductVersion: (NSString*) val
{
    self.dictionary[@"productVersion"] = val;
}

- (MSGraphWin32LobAppRuleOperator*) productVersionOperator
{
    if(!_productVersionOperator){
        _productVersionOperator = [self.dictionary[@"productVersionOperator"] toMSGraphWin32LobAppRuleOperator];
    }
    return _productVersionOperator;
}

- (void) setProductVersionOperator: (MSGraphWin32LobAppRuleOperator*) val
{
    _productVersionOperator = val;
    self.dictionary[@"productVersionOperator"] = val;
}

@end
