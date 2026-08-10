.class public Lcom/meicam/sdk/NvsTimelineCaption;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTimelineCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsTimelineCaption$MotionParameters;
    }
.end annotation


# static fields
.field public static final BOUNDING_TYPE_FRAME:I = 0x2

.field public static final BOUNDING_TYPE_TEXT:I = 0x0

.field public static final BOUNDING_TYPE_TEXT_FRAME:I = 0x1

.field public static final DEFAULT_CATEGORY:I = 0x0

.field public static final LETTER_SPACING_TYPE_ABSOLUTE:I = 0x1

.field public static final LETTER_SPACING_TYPE_PERCENTAGE:I = 0x0

.field public static final NOT_USE_ASSET_DEFAULT_PARAM:I = 0x1

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x1

.field public static final TEXT_ALIGNMENT_LEFT:I = 0x0

.field public static final TEXT_ALIGNMENT_RIGHT:I = 0x2

.field public static final THEME_CATEGORY:I = 0x2

.field public static final USER_CATEGORY:I = 0x1

.field public static final USE_ASSET_DEFAULT_PARAM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeApplyCaptionAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionContext(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionInAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionOutAnimation(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionRenderer(JLjava/lang/String;)Z
.end method

.method private native nativeApplyCaptionStyle(JLjava/lang/String;I)Z
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetAnimationPeroid(J)I
.end method

.method private native nativeGetBackgroundColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetBackgroundRadius(J)F
.end method

.method private native nativeGetBold(J)Z
.end method

.method private native nativeGetBoundingRectangleVertices(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionBoundingVertices(JILcom/meicam/sdk/NvsTimelineCaption$MotionParameters;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/meicam/sdk/NvsTimelineCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionContextPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionInAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionOutAnimationPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionRendererPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCategory(J)I
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetClipAffinityEnabled(J)Z
.end method

.method private native nativeGetDrawOutline(J)Z
.end method

.method private native nativeGetDrawShadow(J)Z
.end method

.method private native nativeGetFontFamily(J)Ljava/lang/String;
.end method

.method private native nativeGetFontFilePath(J)Ljava/lang/String;
.end method

.method private native nativeGetFontSize(J)F
.end method

.method private native nativeGetInAnimationDuration(J)I
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetItalic(J)Z
.end method

.method private native nativeGetLetterSpacing(J)F
.end method

.method private native nativeGetLetterSpacingType(J)I
.end method

.method private native nativeGetLineSpacing(J)F
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutAnimationDuration(J)I
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(J)F
.end method

.method private native nativeGetPanoramicRotationAngle(J)F
.end method

.method private native nativeGetPanoramicScaleX(J)F
.end method

.method private native nativeGetPanoramicScaleY(J)F
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetShadowFeather(J)F
.end method

.method private native nativeGetShadowOffset(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetText(J)Ljava/lang/String;
.end method

.method private native nativeGetTextAlignment(J)I
.end method

.method private native nativeGetTextBoundingRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetTextCenterAzimuthAngle(J)F
.end method

.method private native nativeGetTextCenterPolarAngle(J)F
.end method

.method private native nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetTextOrthoAngleRange(J)F
.end method

.method private native nativeGetTextPolarAngleRange(J)F
.end method

.method private native nativeGetVerticalLayout(J)Z
.end method

.method private native nativeGetWeight(J)I
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeIsModular(J)Z
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnimationPeroid(JI)V
.end method

.method private native nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetBackgroundRadius(JF)V
.end method

.method private native nativeSetBold(JZ)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetClipAffinityEnabled(JZ)V
.end method

.method private native nativeSetCurrentKeyFrameTime(JJ)V
.end method

.method private native nativeSetDrawOutline(JZ)V
.end method

.method private native nativeSetDrawShadow(JZ)V
.end method

.method private native nativeSetFontByFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetFontFamily(JLjava/lang/String;)V
.end method

.method private native nativeSetFontSize(JF)V
.end method

.method private native nativeSetInAnimationDuration(JI)V
.end method

.method private native nativeSetItalic(JZ)V
.end method

.method private native nativeSetLetterSpacing(JF)V
.end method

.method private native nativeSetLetterSpacingType(JI)V
.end method

.method private native nativeSetLineSpacing(JF)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetOutAnimationDuration(JI)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetOutlineWidth(JF)V
.end method

.method private native nativeSetPanoramicRotationAngle(JF)V
.end method

.method private native nativeSetPanoramicScaleX(JF)V
.end method

.method private native nativeSetPanoramicScaleY(JF)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRecordingUserOperation(JZ)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetShadowFeather(JF)V
.end method

.method private native nativeSetShadowOffset(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetText(JLjava/lang/String;)V
.end method

.method private native nativeSetTextAlignment(JI)V
.end method

.method private native nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetVerticalLayout(JZ)V
.end method

.method private native nativeSetWeight(JI)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public applyCaptionStyle(Ljava/lang/String;)Z
    .locals 3

    .line 385
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 386
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public applyCaptionStyle(Ljava/lang/String;I)Z
    .locals 2

    .line 405
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 406
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionStyle(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public applyModularCaptionAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 465
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 466
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionAnimation(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public applyModularCaptionContext(Ljava/lang/String;)Z
    .locals 2

    .line 425
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 426
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionContext(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public applyModularCaptionInAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 485
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 486
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionInAnimation(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public applyModularCaptionOutAnimation(Ljava/lang/String;)Z
    .locals 2

    .line 505
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 506
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionOutAnimation(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public applyModularCaptionRenderer(Ljava/lang/String;)Z
    .locals 2

    .line 445
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 446
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionRenderer(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public changeInPoint(J)J
    .locals 2

    .line 200
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 201
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeInPoint(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public changeOutPoint(J)J
    .locals 2

    .line 221
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 222
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeOutPoint(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    .line 1296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1297
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1905
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1906
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBackgroundColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundRadius()F
    .locals 2

    .line 1937
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1938
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBackgroundRadius(J)F

    move-result p0

    return p0
.end method

.method public getBold()Z
    .locals 2

    .line 725
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 726
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBold(J)Z

    move-result p0

    return p0
.end method

.method public getBoundingRectangleVertices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1475
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1476
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBoundingRectangleVertices(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionBoundingVertices(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1492
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1493
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionBoundingVertices(JILcom/meicam/sdk/NvsTimelineCaption$MotionParameters;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionBoundingVertices(ILcom/meicam/sdk/NvsTimelineCaption$MotionParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/meicam/sdk/NvsTimelineCaption$MotionParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1510
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1511
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionBoundingVertices(JILcom/meicam/sdk/NvsTimelineCaption$MotionParameters;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    .line 282
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 283
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    .line 1247
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1248
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getCategory()I
    .locals 2

    .line 268
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 269
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCategory(J)I

    move-result p0

    return p0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .line 1616
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1617
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterAzimuthAngle(J)F

    move-result p0

    return p0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .line 1571
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1572
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterPolarAngle(J)F

    move-result p0

    return p0
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .line 147
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 148
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetClipAffinityEnabled(J)Z

    move-result p0

    return p0
.end method

.method public getDrawOutline()Z
    .locals 2

    .line 943
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 944
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawOutline(J)Z

    move-result p0

    return p0
.end method

.method public getDrawShadow()Z
    .locals 2

    .line 1033
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1034
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawShadow(J)Z

    move-result p0

    return p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 2

    .line 1217
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1218
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontFamily(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontFilePath()Ljava/lang/String;
    .locals 2

    .line 1185
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1186
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontFilePath(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize()F
    .locals 2

    .line 1153
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1154
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontSize(J)F

    move-result p0

    return p0
.end method

.method public getInPoint()J
    .locals 2

    .line 163
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 164
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItalic()Z
    .locals 2

    .line 785
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 786
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetItalic(J)Z

    move-result p0

    return p0
.end method

.method public getLetterSpacing()F
    .locals 2

    .line 851
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 852
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetLetterSpacing(J)F

    move-result p0

    return p0
.end method

.method public getLetterSpacingType()I
    .locals 2

    .line 817
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 818
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetLetterSpacingType(J)I

    move-result p0

    return p0
.end method

.method public getLineSpacing()F
    .locals 2

    .line 883
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 884
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetLineSpacing(J)F

    move-result p0

    return p0
.end method

.method public getModularCaptionAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 333
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 334
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionAnimationPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModularCaptionAnimationPeroid()I
    .locals 2

    .line 537
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 538
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetAnimationPeroid(J)I

    move-result p0

    return p0
.end method

.method public getModularCaptionContextPackageId()Ljava/lang/String;
    .locals 2

    .line 299
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 300
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionContextPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModularCaptionInAnimationDuration()I
    .locals 2

    .line 569
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 570
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetInAnimationDuration(J)I

    move-result p0

    return p0
.end method

.method public getModularCaptionInAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 350
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 351
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionInAnimationPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModularCaptionOutAnimationDuration()I
    .locals 2

    .line 601
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 602
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutAnimationDuration(J)I

    move-result p0

    return p0
.end method

.method public getModularCaptionOutAnimationPackageId()Ljava/lang/String;
    .locals 2

    .line 367
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 368
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionOutAnimationPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModularCaptionRendererPackageId()Ljava/lang/String;
    .locals 2

    .line 316
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 317
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionRendererPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOpacity()F
    .locals 2

    .line 1873
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1874
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOpacity(J)F

    move-result p0

    return p0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .line 1676
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1677
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOrthoAngleRange(J)F

    move-result p0

    return p0
.end method

.method public getOutPoint()J
    .locals 2

    .line 179
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 180
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 973
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 974
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getOutlineWidth()F
    .locals 2

    .line 1003
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1004
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineWidth(J)F

    move-result p0

    return p0
.end method

.method public getPanoramicRotation()F
    .locals 2

    .line 1796
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1797
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicRotationAngle(J)F

    move-result p0

    return p0
.end method

.method public getPanoramicScaleX()F
    .locals 2

    .line 1736
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1737
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleX(J)F

    move-result p0

    return p0
.end method

.method public getPanoramicScaleY()F
    .locals 2

    .line 1766
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1767
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleY(J)F

    move-result p0

    return p0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .line 1661
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1662
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPolarAngleRange(J)F

    move-result p0

    return p0
.end method

.method public getRoleInTheme()I
    .locals 2

    .line 254
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 255
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRoleInTheme(J)I

    move-result p0

    return p0
.end method

.method public getRotationZ()F
    .locals 2

    .line 1413
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1414
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRotationZ(J)F

    move-result p0

    return p0
.end method

.method public getScaleX()F
    .locals 2

    .line 1330
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1331
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleX(J)F

    move-result p0

    return p0
.end method

.method public getScaleY()F
    .locals 2

    .line 1364
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1365
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleY(J)F

    move-result p0

    return p0
.end method

.method public getShadowColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 1063
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1064
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getShadowFeather()F
    .locals 2

    .line 1123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1124
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowFeather(J)F

    move-result p0

    return p0
.end method

.method public getShadowOffset()Landroid/graphics/PointF;
    .locals 2

    .line 1093
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1094
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowOffset(J)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 631
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 632
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetText(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlignment()I
    .locals 2

    .line 695
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 696
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextAlignment(J)I

    move-result p0

    return p0
.end method

.method public getTextBoundingRect()Landroid/graphics/RectF;
    .locals 2

    .line 1460
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1461
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextBoundingRect(J)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getTextCenterAzimuthAngle()F
    .locals 2

    .line 1631
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1632
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextCenterAzimuthAngle(J)F

    move-result p0

    return p0
.end method

.method public getTextCenterPolarAngle()F
    .locals 2

    .line 1586
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1587
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextCenterPolarAngle(J)F

    move-result p0

    return p0
.end method

.method public getTextColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 913
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 914
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getTextOrthoAngleRange()F
    .locals 2

    .line 1706
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1707
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextOrthoAngleRange(J)F

    move-result p0

    return p0
.end method

.method public getTextPolarAngleRange()F
    .locals 2

    .line 1691
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1692
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextPolarAngleRange(J)F

    move-result p0

    return p0
.end method

.method public getVerticalLayout()Z
    .locals 2

    .line 663
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 664
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetVerticalLayout(J)Z

    move-result p0

    return p0
.end method

.method public getWeight()I
    .locals 2

    .line 755
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 756
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetWeight(J)I

    move-result p0

    return p0
.end method

.method public getZValue()F
    .locals 2

    .line 1826
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1827
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetZValue(J)F

    move-result p0

    return p0
.end method

.method public isModular()Z
    .locals 2

    .line 1541
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1542
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeIsModular(J)Z

    move-result p0

    return p0
.end method

.method public isPanoramic()Z
    .locals 2

    .line 1526
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1527
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeIsPanoramic(J)Z

    move-result p0

    return p0
.end method

.method public movePosition(J)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 240
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeMovePosition(JJ)V

    return-void
.end method

.method public rotateCaption(F)V
    .locals 5

    .line 1445
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1446
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getTextBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1447
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 1430
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1431
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .line 1381
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1382
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 1280
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1281
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1889
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1890
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetBackgroundColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 2

    .line 1921
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1922
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetBackgroundRadius(JF)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    .line 710
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 711
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetBold(JZ)V

    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .line 1232
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1233
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .line 1601
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1602
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .line 1556
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1557
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .line 132
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 133
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetClipAffinityEnabled(JZ)V

    return-void
.end method

.method public setCurrentKeyFrameTime(J)V
    .locals 2

    .line 1951
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1952
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCurrentKeyFrameTime(JJ)V

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 2

    .line 928
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 929
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawOutline(JZ)V

    return-void
.end method

.method public setDrawShadow(Z)V
    .locals 2

    .line 1018
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1019
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawShadow(JZ)V

    return-void
.end method

.method public setFontByFilePath(Ljava/lang/String;)V
    .locals 2

    .line 1169
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1170
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontByFilePath(JLjava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 1201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1202
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontFamily(JLjava/lang/String;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .line 1138
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1139
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontSize(JF)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    .line 770
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 771
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetItalic(JZ)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    .line 834
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 835
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetLetterSpacing(JF)V

    return-void
.end method

.method public setLetterSpacingType(I)V
    .locals 2

    .line 801
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 802
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetLetterSpacingType(JI)V

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 2

    .line 867
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 868
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetLineSpacing(JF)V

    return-void
.end method

.method public setModularCaptionAnimationPeroid(I)V
    .locals 2

    .line 521
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 522
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetAnimationPeroid(JI)V

    return-void
.end method

.method public setModularCaptionInAnimationDuration(I)V
    .locals 2

    .line 553
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 554
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetInAnimationDuration(JI)V

    return-void
.end method

.method public setModularCaptionOutAnimationDuration(I)V
    .locals 2

    .line 585
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 586
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutAnimationDuration(JI)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 1857
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1858
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setOutlineColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 958
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 959
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 2

    .line 988
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 989
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineWidth(JF)V

    return-void
.end method

.method public setPanoramicRotation(F)V
    .locals 2

    .line 1781
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1782
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicRotationAngle(JF)V

    return-void
.end method

.method public setPanoramicScaleX(F)V
    .locals 2

    .line 1721
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1722
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleX(JF)V

    return-void
.end method

.method public setPanoramicScaleY(F)V
    .locals 2

    .line 1751
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1752
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleY(JF)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .line 1646
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1647
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRecordingUserOperation(Z)V
    .locals 2

    .line 1841
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1842
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetRecordingUserOperation(JZ)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .line 1397
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1398
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 1313
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1314
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleX(JF)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .line 1347
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1348
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleY(JF)V

    return-void
.end method

.method public setShadowColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 1048
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1049
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setShadowFeather(F)V
    .locals 2

    .line 1108
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1109
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowFeather(JF)V

    return-void
.end method

.method public setShadowOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 1078
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1079
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowOffset(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 616
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 617
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetText(JLjava/lang/String;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .line 679
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 680
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextAlignment(JI)V

    return-void
.end method

.method public setTextColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 898
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 899
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setVerticalLayout(Z)V
    .locals 2

    .line 647
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 648
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetVerticalLayout(JZ)V

    return-void
.end method

.method public setWeight(I)V
    .locals 2

    .line 740
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 741
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetWeight(JI)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .line 1811
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1812
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    .line 1264
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1265
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    return-void
.end method
