// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUriClickSecurityState()
{
    NSString* _clickAction;
    NSDate* _clickDateTime;
    NSString* _uriClickSecurityStateId;
    NSString* _sourceId;
    NSString* _uriDomain;
    NSString* _verdict;
}
@end

@implementation MSGraphUriClickSecurityState

- (NSString*) clickAction
{
    if([[NSNull null] isEqual:self.dictionary[@"clickAction"]])
    {
        return nil;
    }   
    return self.dictionary[@"clickAction"];
}

- (void) setClickAction: (NSString*) val
{
    self.dictionary[@"clickAction"] = val;
}

- (NSDate*) clickDateTime
{
    if(!_clickDateTime){
        _clickDateTime = [NSDate ms_dateFromString: self.dictionary[@"clickDateTime"]];
    }
    return _clickDateTime;
}

- (void) setClickDateTime: (NSDate*) val
{
    _clickDateTime = val;
    self.dictionary[@"clickDateTime"] = [val ms_toString];
}

- (NSString*) uriClickSecurityStateId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setUriClickSecurityStateId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) sourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceId"];
}

- (void) setSourceId: (NSString*) val
{
    self.dictionary[@"sourceId"] = val;
}

- (NSString*) uriDomain
{
    if([[NSNull null] isEqual:self.dictionary[@"uriDomain"]])
    {
        return nil;
    }   
    return self.dictionary[@"uriDomain"];
}

- (void) setUriDomain: (NSString*) val
{
    self.dictionary[@"uriDomain"] = val;
}

- (NSString*) verdict
{
    if([[NSNull null] isEqual:self.dictionary[@"verdict"]])
    {
        return nil;
    }   
    return self.dictionary[@"verdict"];
}

- (void) setVerdict: (NSString*) val
{
    self.dictionary[@"verdict"] = val;
}

@end
