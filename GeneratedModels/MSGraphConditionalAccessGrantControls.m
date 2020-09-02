// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessGrantControls()
{
    NSArray* _builtInControls;
    NSArray* _customAuthenticationFactors;
    NSString* _operator;
    NSArray* _termsOfUse;
}
@end

@implementation MSGraphConditionalAccessGrantControls

- (NSArray*) builtInControls
{
    if(!_builtInControls){
        
    NSMutableArray *builtInControlsResult = [NSMutableArray array];
    NSArray *builtInControls = self.dictionary[@"builtInControls"];

    if ([builtInControls isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessGrantControl in builtInControls){
            [builtInControlsResult addObject:tempConditionalAccessGrantControl];
        }
    }

    _builtInControls = builtInControlsResult;
        
    }
    return _builtInControls;
}

- (void) setBuiltInControls: (NSArray*) val
{
    _builtInControls = val;
    self.dictionary[@"builtInControls"] = val;
}

- (NSArray*) customAuthenticationFactors
{
    return self.dictionary[@"customAuthenticationFactors"];
}

- (void) setCustomAuthenticationFactors: (NSArray*) val
{
    self.dictionary[@"customAuthenticationFactors"] = val;
}

- (NSString*) operator
{
    if([[NSNull null] isEqual:self.dictionary[@"operator"]])
    {
        return nil;
    }   
    return self.dictionary[@"operator"];
}

- (void) setOperator: (NSString*) val
{
    self.dictionary[@"operator"] = val;
}

- (NSArray*) termsOfUse
{
    return self.dictionary[@"termsOfUse"];
}

- (void) setTermsOfUse: (NSArray*) val
{
    self.dictionary[@"termsOfUse"] = val;
}

@end
