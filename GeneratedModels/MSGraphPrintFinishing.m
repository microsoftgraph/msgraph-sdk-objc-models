// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintFinishing.h"

@interface MSGraphPrintFinishing () {
    MSGraphPrintFinishingValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintFinishingValue enumValue;
@end

@implementation MSGraphPrintFinishing

+ (MSGraphPrintFinishing*) none {
    static MSGraphPrintFinishing *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphPrintFinishing alloc] init];
        _none.enumValue = MSGraphPrintFinishingNone;
    });
    return _none;
}
+ (MSGraphPrintFinishing*) staple {
    static MSGraphPrintFinishing *_staple;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staple = [[MSGraphPrintFinishing alloc] init];
        _staple.enumValue = MSGraphPrintFinishingStaple;
    });
    return _staple;
}
+ (MSGraphPrintFinishing*) punch {
    static MSGraphPrintFinishing *_punch;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _punch = [[MSGraphPrintFinishing alloc] init];
        _punch.enumValue = MSGraphPrintFinishingPunch;
    });
    return _punch;
}
+ (MSGraphPrintFinishing*) cover {
    static MSGraphPrintFinishing *_cover;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _cover = [[MSGraphPrintFinishing alloc] init];
        _cover.enumValue = MSGraphPrintFinishingCover;
    });
    return _cover;
}
+ (MSGraphPrintFinishing*) bind {
    static MSGraphPrintFinishing *_bind;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bind = [[MSGraphPrintFinishing alloc] init];
        _bind.enumValue = MSGraphPrintFinishingBind;
    });
    return _bind;
}
+ (MSGraphPrintFinishing*) saddleStitch {
    static MSGraphPrintFinishing *_saddleStitch;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _saddleStitch = [[MSGraphPrintFinishing alloc] init];
        _saddleStitch.enumValue = MSGraphPrintFinishingSaddleStitch;
    });
    return _saddleStitch;
}
+ (MSGraphPrintFinishing*) stitchEdge {
    static MSGraphPrintFinishing *_stitchEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitchEdge = [[MSGraphPrintFinishing alloc] init];
        _stitchEdge.enumValue = MSGraphPrintFinishingStitchEdge;
    });
    return _stitchEdge;
}
+ (MSGraphPrintFinishing*) stapleTopLeft {
    static MSGraphPrintFinishing *_stapleTopLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleTopLeft = [[MSGraphPrintFinishing alloc] init];
        _stapleTopLeft.enumValue = MSGraphPrintFinishingStapleTopLeft;
    });
    return _stapleTopLeft;
}
+ (MSGraphPrintFinishing*) stapleBottomLeft {
    static MSGraphPrintFinishing *_stapleBottomLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleBottomLeft = [[MSGraphPrintFinishing alloc] init];
        _stapleBottomLeft.enumValue = MSGraphPrintFinishingStapleBottomLeft;
    });
    return _stapleBottomLeft;
}
+ (MSGraphPrintFinishing*) stapleTopRight {
    static MSGraphPrintFinishing *_stapleTopRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleTopRight = [[MSGraphPrintFinishing alloc] init];
        _stapleTopRight.enumValue = MSGraphPrintFinishingStapleTopRight;
    });
    return _stapleTopRight;
}
+ (MSGraphPrintFinishing*) stapleBottomRight {
    static MSGraphPrintFinishing *_stapleBottomRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleBottomRight = [[MSGraphPrintFinishing alloc] init];
        _stapleBottomRight.enumValue = MSGraphPrintFinishingStapleBottomRight;
    });
    return _stapleBottomRight;
}
+ (MSGraphPrintFinishing*) stitchLeftEdge {
    static MSGraphPrintFinishing *_stitchLeftEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitchLeftEdge = [[MSGraphPrintFinishing alloc] init];
        _stitchLeftEdge.enumValue = MSGraphPrintFinishingStitchLeftEdge;
    });
    return _stitchLeftEdge;
}
+ (MSGraphPrintFinishing*) stitchTopEdge {
    static MSGraphPrintFinishing *_stitchTopEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitchTopEdge = [[MSGraphPrintFinishing alloc] init];
        _stitchTopEdge.enumValue = MSGraphPrintFinishingStitchTopEdge;
    });
    return _stitchTopEdge;
}
+ (MSGraphPrintFinishing*) stitchRightEdge {
    static MSGraphPrintFinishing *_stitchRightEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitchRightEdge = [[MSGraphPrintFinishing alloc] init];
        _stitchRightEdge.enumValue = MSGraphPrintFinishingStitchRightEdge;
    });
    return _stitchRightEdge;
}
+ (MSGraphPrintFinishing*) stitchBottomEdge {
    static MSGraphPrintFinishing *_stitchBottomEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stitchBottomEdge = [[MSGraphPrintFinishing alloc] init];
        _stitchBottomEdge.enumValue = MSGraphPrintFinishingStitchBottomEdge;
    });
    return _stitchBottomEdge;
}
+ (MSGraphPrintFinishing*) stapleDualLeft {
    static MSGraphPrintFinishing *_stapleDualLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleDualLeft = [[MSGraphPrintFinishing alloc] init];
        _stapleDualLeft.enumValue = MSGraphPrintFinishingStapleDualLeft;
    });
    return _stapleDualLeft;
}
+ (MSGraphPrintFinishing*) stapleDualTop {
    static MSGraphPrintFinishing *_stapleDualTop;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleDualTop = [[MSGraphPrintFinishing alloc] init];
        _stapleDualTop.enumValue = MSGraphPrintFinishingStapleDualTop;
    });
    return _stapleDualTop;
}
+ (MSGraphPrintFinishing*) stapleDualRight {
    static MSGraphPrintFinishing *_stapleDualRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleDualRight = [[MSGraphPrintFinishing alloc] init];
        _stapleDualRight.enumValue = MSGraphPrintFinishingStapleDualRight;
    });
    return _stapleDualRight;
}
+ (MSGraphPrintFinishing*) stapleDualBottom {
    static MSGraphPrintFinishing *_stapleDualBottom;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stapleDualBottom = [[MSGraphPrintFinishing alloc] init];
        _stapleDualBottom.enumValue = MSGraphPrintFinishingStapleDualBottom;
    });
    return _stapleDualBottom;
}
+ (MSGraphPrintFinishing*) unknownFutureValue {
    static MSGraphPrintFinishing *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintFinishing alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintFinishingUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintFinishing*) UnknownEnumValue {
    static MSGraphPrintFinishing *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintFinishing alloc] init];
        _unknownValue.enumValue = MSGraphPrintFinishingEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintFinishing*) printFinishingWithEnumValue:(MSGraphPrintFinishingValue)val {

    switch(val)
    {
        case MSGraphPrintFinishingNone:
            return [MSGraphPrintFinishing none];
        case MSGraphPrintFinishingStaple:
            return [MSGraphPrintFinishing staple];
        case MSGraphPrintFinishingPunch:
            return [MSGraphPrintFinishing punch];
        case MSGraphPrintFinishingCover:
            return [MSGraphPrintFinishing cover];
        case MSGraphPrintFinishingBind:
            return [MSGraphPrintFinishing bind];
        case MSGraphPrintFinishingSaddleStitch:
            return [MSGraphPrintFinishing saddleStitch];
        case MSGraphPrintFinishingStitchEdge:
            return [MSGraphPrintFinishing stitchEdge];
        case MSGraphPrintFinishingStapleTopLeft:
            return [MSGraphPrintFinishing stapleTopLeft];
        case MSGraphPrintFinishingStapleBottomLeft:
            return [MSGraphPrintFinishing stapleBottomLeft];
        case MSGraphPrintFinishingStapleTopRight:
            return [MSGraphPrintFinishing stapleTopRight];
        case MSGraphPrintFinishingStapleBottomRight:
            return [MSGraphPrintFinishing stapleBottomRight];
        case MSGraphPrintFinishingStitchLeftEdge:
            return [MSGraphPrintFinishing stitchLeftEdge];
        case MSGraphPrintFinishingStitchTopEdge:
            return [MSGraphPrintFinishing stitchTopEdge];
        case MSGraphPrintFinishingStitchRightEdge:
            return [MSGraphPrintFinishing stitchRightEdge];
        case MSGraphPrintFinishingStitchBottomEdge:
            return [MSGraphPrintFinishing stitchBottomEdge];
        case MSGraphPrintFinishingStapleDualLeft:
            return [MSGraphPrintFinishing stapleDualLeft];
        case MSGraphPrintFinishingStapleDualTop:
            return [MSGraphPrintFinishing stapleDualTop];
        case MSGraphPrintFinishingStapleDualRight:
            return [MSGraphPrintFinishing stapleDualRight];
        case MSGraphPrintFinishingStapleDualBottom:
            return [MSGraphPrintFinishing stapleDualBottom];
        case MSGraphPrintFinishingUnknownFutureValue:
            return [MSGraphPrintFinishing unknownFutureValue];
        case MSGraphPrintFinishingEndOfEnum:
        default:
            return [MSGraphPrintFinishing UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintFinishingNone:
            return @"none";
        case MSGraphPrintFinishingStaple:
            return @"staple";
        case MSGraphPrintFinishingPunch:
            return @"punch";
        case MSGraphPrintFinishingCover:
            return @"cover";
        case MSGraphPrintFinishingBind:
            return @"bind";
        case MSGraphPrintFinishingSaddleStitch:
            return @"saddleStitch";
        case MSGraphPrintFinishingStitchEdge:
            return @"stitchEdge";
        case MSGraphPrintFinishingStapleTopLeft:
            return @"stapleTopLeft";
        case MSGraphPrintFinishingStapleBottomLeft:
            return @"stapleBottomLeft";
        case MSGraphPrintFinishingStapleTopRight:
            return @"stapleTopRight";
        case MSGraphPrintFinishingStapleBottomRight:
            return @"stapleBottomRight";
        case MSGraphPrintFinishingStitchLeftEdge:
            return @"stitchLeftEdge";
        case MSGraphPrintFinishingStitchTopEdge:
            return @"stitchTopEdge";
        case MSGraphPrintFinishingStitchRightEdge:
            return @"stitchRightEdge";
        case MSGraphPrintFinishingStitchBottomEdge:
            return @"stitchBottomEdge";
        case MSGraphPrintFinishingStapleDualLeft:
            return @"stapleDualLeft";
        case MSGraphPrintFinishingStapleDualTop:
            return @"stapleDualTop";
        case MSGraphPrintFinishingStapleDualRight:
            return @"stapleDualRight";
        case MSGraphPrintFinishingStapleDualBottom:
            return @"stapleDualBottom";
        case MSGraphPrintFinishingUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintFinishingEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintFinishingValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintFinishing)

- (MSGraphPrintFinishing*) toMSGraphPrintFinishing{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphPrintFinishing none];
    }
    else if([self isEqualToString:@"staple"])
    {
          return [MSGraphPrintFinishing staple];
    }
    else if([self isEqualToString:@"punch"])
    {
          return [MSGraphPrintFinishing punch];
    }
    else if([self isEqualToString:@"cover"])
    {
          return [MSGraphPrintFinishing cover];
    }
    else if([self isEqualToString:@"bind"])
    {
          return [MSGraphPrintFinishing bind];
    }
    else if([self isEqualToString:@"saddleStitch"])
    {
          return [MSGraphPrintFinishing saddleStitch];
    }
    else if([self isEqualToString:@"stitchEdge"])
    {
          return [MSGraphPrintFinishing stitchEdge];
    }
    else if([self isEqualToString:@"stapleTopLeft"])
    {
          return [MSGraphPrintFinishing stapleTopLeft];
    }
    else if([self isEqualToString:@"stapleBottomLeft"])
    {
          return [MSGraphPrintFinishing stapleBottomLeft];
    }
    else if([self isEqualToString:@"stapleTopRight"])
    {
          return [MSGraphPrintFinishing stapleTopRight];
    }
    else if([self isEqualToString:@"stapleBottomRight"])
    {
          return [MSGraphPrintFinishing stapleBottomRight];
    }
    else if([self isEqualToString:@"stitchLeftEdge"])
    {
          return [MSGraphPrintFinishing stitchLeftEdge];
    }
    else if([self isEqualToString:@"stitchTopEdge"])
    {
          return [MSGraphPrintFinishing stitchTopEdge];
    }
    else if([self isEqualToString:@"stitchRightEdge"])
    {
          return [MSGraphPrintFinishing stitchRightEdge];
    }
    else if([self isEqualToString:@"stitchBottomEdge"])
    {
          return [MSGraphPrintFinishing stitchBottomEdge];
    }
    else if([self isEqualToString:@"stapleDualLeft"])
    {
          return [MSGraphPrintFinishing stapleDualLeft];
    }
    else if([self isEqualToString:@"stapleDualTop"])
    {
          return [MSGraphPrintFinishing stapleDualTop];
    }
    else if([self isEqualToString:@"stapleDualRight"])
    {
          return [MSGraphPrintFinishing stapleDualRight];
    }
    else if([self isEqualToString:@"stapleDualBottom"])
    {
          return [MSGraphPrintFinishing stapleDualBottom];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintFinishing unknownFutureValue];
    }
    else {
        return [MSGraphPrintFinishing UnknownEnumValue];
    }
}

@end
