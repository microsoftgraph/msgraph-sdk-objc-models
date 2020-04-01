// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPublicError()
{
    NSString* _code;
    NSString* _message;
    NSString* _target;
    NSArray* _details;
    MSGraphPublicInnerError* _innerError;
}
@end

@implementation MSGraphPublicError

- (NSString*) code
{
    if([[NSNull null] isEqual:self.dictionary[@"code"]])
    {
        return nil;
    }   
    return self.dictionary[@"code"];
}

- (void) setCode: (NSString*) val
{
    self.dictionary[@"code"] = val;
}

- (NSString*) message
{
    if([[NSNull null] isEqual:self.dictionary[@"message"]])
    {
        return nil;
    }   
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

- (NSString*) target
{
    if([[NSNull null] isEqual:self.dictionary[@"target"]])
    {
        return nil;
    }   
    return self.dictionary[@"target"];
}

- (void) setTarget: (NSString*) val
{
    self.dictionary[@"target"] = val;
}

- (NSArray*) details
{
    if(!_details){
        
    NSMutableArray *detailsResult = [NSMutableArray array];
    NSArray *details = self.dictionary[@"details"];

    if ([details isKindOfClass:[NSArray class]]){
        for (id tempPublicErrorDetail in details){
            [detailsResult addObject:tempPublicErrorDetail];
        }
    }

    _details = detailsResult;
        
    }
    return _details;
}

- (void) setDetails: (NSArray*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (MSGraphPublicInnerError*) innerError
{
    if(!_innerError){
        _innerError = [[MSGraphPublicInnerError alloc] initWithDictionary: self.dictionary[@"innerError"]];
    }
    return _innerError;
}

- (void) setInnerError: (MSGraphPublicInnerError*) val
{
    _innerError = val;
    self.dictionary[@"innerError"] = val;
}

@end
