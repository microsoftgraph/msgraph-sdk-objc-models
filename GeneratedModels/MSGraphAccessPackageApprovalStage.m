// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageApprovalStage()
{
    MSDuration* _durationBeforeAutomaticDenial;
    MSDuration* _durationBeforeEscalation;
    NSArray* _escalationApprovers;
    NSArray* _fallbackEscalationApprovers;
    NSArray* _fallbackPrimaryApprovers;
    BOOL _isApproverJustificationRequired;
    BOOL _isEscalationEnabled;
    NSArray* _primaryApprovers;
}
@end

@implementation MSGraphAccessPackageApprovalStage

- (MSDuration*) durationBeforeAutomaticDenial
{
    if(!_durationBeforeAutomaticDenial){
        _durationBeforeAutomaticDenial = [MSDuration ms_durationFromString: self.dictionary[@"durationBeforeAutomaticDenial"]];
    }
    return _durationBeforeAutomaticDenial;
}

- (void) setDurationBeforeAutomaticDenial: (MSDuration*) val
{
    _durationBeforeAutomaticDenial = val;
    self.dictionary[@"durationBeforeAutomaticDenial"] = val.durationString;
}

- (MSDuration*) durationBeforeEscalation
{
    if(!_durationBeforeEscalation){
        _durationBeforeEscalation = [MSDuration ms_durationFromString: self.dictionary[@"durationBeforeEscalation"]];
    }
    return _durationBeforeEscalation;
}

- (void) setDurationBeforeEscalation: (MSDuration*) val
{
    _durationBeforeEscalation = val;
    self.dictionary[@"durationBeforeEscalation"] = val.durationString;
}

- (NSArray*) escalationApprovers
{
    if(!_escalationApprovers){
        
    NSMutableArray *escalationApproversResult = [NSMutableArray array];
    NSArray *escalationApprovers = self.dictionary[@"escalationApprovers"];

    if ([escalationApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in escalationApprovers){
            [escalationApproversResult addObject:tempSubjectSet];
        }
    }

    _escalationApprovers = escalationApproversResult;
        
    }
    return _escalationApprovers;
}

- (void) setEscalationApprovers: (NSArray*) val
{
    _escalationApprovers = val;
    self.dictionary[@"escalationApprovers"] = val;
}

- (NSArray*) fallbackEscalationApprovers
{
    if(!_fallbackEscalationApprovers){
        
    NSMutableArray *fallbackEscalationApproversResult = [NSMutableArray array];
    NSArray *fallbackEscalationApprovers = self.dictionary[@"fallbackEscalationApprovers"];

    if ([fallbackEscalationApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in fallbackEscalationApprovers){
            [fallbackEscalationApproversResult addObject:tempSubjectSet];
        }
    }

    _fallbackEscalationApprovers = fallbackEscalationApproversResult;
        
    }
    return _fallbackEscalationApprovers;
}

- (void) setFallbackEscalationApprovers: (NSArray*) val
{
    _fallbackEscalationApprovers = val;
    self.dictionary[@"fallbackEscalationApprovers"] = val;
}

- (NSArray*) fallbackPrimaryApprovers
{
    if(!_fallbackPrimaryApprovers){
        
    NSMutableArray *fallbackPrimaryApproversResult = [NSMutableArray array];
    NSArray *fallbackPrimaryApprovers = self.dictionary[@"fallbackPrimaryApprovers"];

    if ([fallbackPrimaryApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in fallbackPrimaryApprovers){
            [fallbackPrimaryApproversResult addObject:tempSubjectSet];
        }
    }

    _fallbackPrimaryApprovers = fallbackPrimaryApproversResult;
        
    }
    return _fallbackPrimaryApprovers;
}

- (void) setFallbackPrimaryApprovers: (NSArray*) val
{
    _fallbackPrimaryApprovers = val;
    self.dictionary[@"fallbackPrimaryApprovers"] = val;
}

- (BOOL) isApproverJustificationRequired
{
    _isApproverJustificationRequired = [self.dictionary[@"isApproverJustificationRequired"] boolValue];
    return _isApproverJustificationRequired;
}

- (void) setIsApproverJustificationRequired: (BOOL) val
{
    _isApproverJustificationRequired = val;
    self.dictionary[@"isApproverJustificationRequired"] = @(val);
}

- (BOOL) isEscalationEnabled
{
    _isEscalationEnabled = [self.dictionary[@"isEscalationEnabled"] boolValue];
    return _isEscalationEnabled;
}

- (void) setIsEscalationEnabled: (BOOL) val
{
    _isEscalationEnabled = val;
    self.dictionary[@"isEscalationEnabled"] = @(val);
}

- (NSArray*) primaryApprovers
{
    if(!_primaryApprovers){
        
    NSMutableArray *primaryApproversResult = [NSMutableArray array];
    NSArray *primaryApprovers = self.dictionary[@"primaryApprovers"];

    if ([primaryApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in primaryApprovers){
            [primaryApproversResult addObject:tempSubjectSet];
        }
    }

    _primaryApprovers = primaryApproversResult;
        
    }
    return _primaryApprovers;
}

- (void) setPrimaryApprovers: (NSArray*) val
{
    _primaryApprovers = val;
    self.dictionary[@"primaryApprovers"] = val;
}

@end
