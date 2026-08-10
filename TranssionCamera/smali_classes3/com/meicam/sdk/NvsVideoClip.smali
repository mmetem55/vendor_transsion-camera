.class public Lcom/meicam/sdk/NvsVideoClip;
.super Lcom/meicam/sdk/NvsClip;
.source "NvsVideoClip.java"


# static fields
.field public static final CLIP_BLENDING_MODE_ADD:I = 0x4

.field public static final CLIP_BLENDING_MODE_BURN:I = 0x7

.field public static final CLIP_BLENDING_MODE_DARKEN:I = 0x6

.field public static final CLIP_BLENDING_MODE_DIFFERENCE:I = 0x12

.field public static final CLIP_BLENDING_MODE_DODGE:I = 0xa

.field public static final CLIP_BLENDING_MODE_EXCLUSION:I = 0x5

.field public static final CLIP_BLENDING_MODE_HARD_LIGHT:I = 0xd

.field public static final CLIP_BLENDING_MODE_HARD_MIX:I = 0x11

.field public static final CLIP_BLENDING_MODE_LIGHTEN:I = 0x9

.field public static final CLIP_BLENDING_MODE_LINEAR_BURN:I = 0x8

.field public static final CLIP_BLENDING_MODE_LINEAR_LIGHT:I = 0x10

.field public static final CLIP_BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final CLIP_BLENDING_MODE_NORMAL:I = 0x0

.field public static final CLIP_BLENDING_MODE_OVERLAY:I = 0xb

.field public static final CLIP_BLENDING_MODE_PIN_LIGHT:I = 0xf

.field public static final CLIP_BLENDING_MODE_SCREEN:I = 0x3

.field public static final CLIP_BLENDING_MODE_SOFT_LIGHT:I = 0xc

.field public static final CLIP_BLENDING_MODE_SUBTRACT:I = 0x2

.field public static final CLIP_BLENDING_MODE_VIVID_LIGHT:I = 0xe

.field public static final CLIP_MOTIONMODE_LETTERBOX_ZOOMIN:I = 0x0

.field public static final CLIP_WRAPMODE_REPEAT_LASTFRAME:I = 0x0

.field public static final ClIP_BACKGROUNDMODE_BLUR:I = 0x1

.field public static final ClIP_BACKGROUNDMODE_COLOR_SOLID:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_0:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_180:I = 0x2

.field public static final ClIP_EXTRAVIDEOROTATION_270:I = 0x3

.field public static final ClIP_EXTRAVIDEOROTATION_90:I = 0x1

.field public static final ClIP_MOTIONMODE_LETTERBOX_ZOOMOUT:I = 0x1

.field public static final ClIP_WRAPMODE_REPEAT:I = 0x2

.field public static final ClIP_WRAPMODE_REPEAT_FIRSTFRAME:I = 0x1

.field public static final IMAGE_CLIP_MOTIONMMODE_ROI:I = 0x2

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_1:I = 0x1

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_2:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_3:I = 0x3

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_BASE:I = 0x0

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_NONE:I = -0x1

.field public static final VIDEO_CLIP_TYPE_AV:I = 0x0

.field public static final VIDEO_CLIP_TYPE_IMAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/meicam/sdk/NvsClip;-><init>()V

    return-void
.end method

.method private native nativeAppendBeautyFx(J)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendBuiltinFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendPackagedFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeChangeVariableSpeed(JDDZ)V
.end method

.method private native nativeDisableAmbiguousCrop(JZ)V
.end method

.method private native nativeEnableClipHDR(JZ)V
.end method

.method private native nativeEnablePropertyVideoFx(JZ)V
.end method

.method private native nativeEnableSlowMotionBlended(JZ)V
.end method

.method private native nativeEnableVideoClipROI(JZ)V
.end method

.method private native nativeGetBlendingMode(J)I
.end method

.method private native nativeGetClipWrapMode(J)I
.end method

.method private native nativeGetEndROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetEndSpeed(J)D
.end method

.method private native nativeGetExtraVideoRotation(J)I
.end method

.method private native nativeGetFxByIndex(JI)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetImageMaskROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetImageMotionAnimationEnabled(J)Z
.end method

.method private native nativeGetImageMotionMode(J)I
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;
.end method

.method private native nativeGetPlayInReverse(J)Z
.end method

.method private native nativeGetPropertyVideoFx(J)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetSourceBackgroundColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetSourceBackgroundMode(J)I
.end method

.method private native nativeGetStartROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetStartSpeed(J)D
.end method

.method private native nativeGetVideoType(J)I
.end method

.method private native nativeInsertBeautyFx(JI)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertBuiltinFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertPackagedFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeIsAmbiguousCropDisabled(J)Z
.end method

.method private native nativeIsClipHDREnabled(J)Z
.end method

.method private native nativeIsOriginalRender(J)Z
.end method

.method private native nativeIsPropertyVideoFxEnabled(J)Z
.end method

.method private native nativeIsSlowMotionBlended(J)Z
.end method

.method private native nativeIsSoftWareDeocdingUsed(J)Z
.end method

.method private native nativeIsVideoClipROIEnabled(J)Z
.end method

.method private native nativeRemoveAllFx(J)Z
.end method

.method private native nativeRemoveFx(JI)Z
.end method

.method private native nativeSetBlendingMode(JI)V
.end method

.method private native nativeSetClipWrapMode(JI)V
.end method

.method private native nativeSetDecodeTemporalLayer(JI)V
.end method

.method private native nativeSetEnableOriginalRender(JZ)V
.end method

.method private native nativeSetExtraVideoRotation(JI)V
.end method

.method private native nativeSetExtraVideoRotation2(JIZ)V
.end method

.method private native nativeSetImageMaskROI(JLandroid/graphics/RectF;)V
.end method

.method private native nativeSetImageMotionAnimationEnabled(JZ)V
.end method

.method private native nativeSetImageMotionMode(JI)V
.end method

.method private native nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetPanAndScan(JFF)V
.end method

.method private native nativeSetPlayInReverse(JZ)V
.end method

.method private native nativeSetSoftWareDecoding(JZ)V
.end method

.method private native nativeSetSourceBackgroundColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetSourceBackgroundMode(JI)V
.end method


# virtual methods
.method public appendBeautyFx()Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1059
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1060
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBeautyFx(J)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 945
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 946
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 3

    .line 1023
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1024
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsClip;->getFxCount()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 985
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 986
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public changeVariableSpeed(DDZ)V
    .locals 8

    .line 703
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 704
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoClip;->nativeChangeVariableSpeed(JDDZ)V

    return-void
.end method

.method public disableAmbiguousCrop(Z)V
    .locals 2

    .line 311
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 312
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeDisableAmbiguousCrop(JZ)V

    return-void
.end method

.method public enableClipHDR(Z)V
    .locals 2

    .line 913
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 914
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableClipHDR(JZ)V

    return-void
.end method

.method public enablePropertyVideoFx(Z)V
    .locals 2

    .line 880
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 881
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnablePropertyVideoFx(JZ)V

    return-void
.end method

.method public enableSlowMotionBlended(Z)V
    .locals 2

    .line 410
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 411
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableSlowMotionBlended(JZ)V

    return-void
.end method

.method public enableVideoClipROI(Z)V
    .locals 2

    .line 379
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 380
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeEnableVideoClipROI(JZ)V

    return-void
.end method

.method public getBlendingMode()I
    .locals 2

    .line 777
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 778
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetBlendingMode(J)I

    move-result p0

    return p0
.end method

.method public getClipWrapMode()I
    .locals 2

    .line 679
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 680
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetClipWrapMode(J)I

    move-result p0

    return p0
.end method

.method public getEndROI()Landroid/graphics/RectF;
    .locals 2

    .line 584
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 585
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetEndROI(J)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getEndSpeed()D
    .locals 2

    .line 743
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 744
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetEndSpeed(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraVideoRotation()I
    .locals 2

    .line 265
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 266
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetExtraVideoRotation(J)I

    move-result p0

    return p0
.end method

.method public getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1127
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1128
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFxByIndex(JI)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public getImageMaskROI()Landroid/graphics/RectF;
    .locals 2

    .line 623
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 624
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMaskROI(J)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMotionAnimationEnabled()Z
    .locals 2

    .line 536
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 537
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionAnimationEnabled(J)Z

    move-result p0

    return p0
.end method

.method public getImageMotionMode()I
    .locals 2

    .line 504
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 505
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionMode(J)I

    move-result p0

    return p0
.end method

.method public getOpacity()F
    .locals 2

    .line 811
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 812
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetOpacity(J)F

    move-result p0

    return p0
.end method

.method public getPanAndScan()Lcom/meicam/sdk/NvsPanAndScan;
    .locals 2

    .line 364
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 365
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;

    move-result-object p0

    return-object p0
.end method

.method public getPlayInReverse()Z
    .locals 2

    .line 217
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 218
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPlayInReverse(J)Z

    move-result p0

    return p0
.end method

.method public getPropertyVideoFx()Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 859
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 860
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPropertyVideoFx(J)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public getRoleInTheme()I
    .locals 2

    .line 177
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 178
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetRoleInTheme(J)I

    move-result p0

    return p0
.end method

.method public getSourceBackgroundColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .line 488
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 489
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetSourceBackgroundColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getSourceBackgroundMode()I
    .locals 2

    .line 441
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 442
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetSourceBackgroundMode(J)I

    move-result p0

    return p0
.end method

.method public getStartROI()Landroid/graphics/RectF;
    .locals 2

    .line 568
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 569
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetStartROI(J)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getStartSpeed()D
    .locals 2

    .line 723
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 724
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetStartSpeed(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoType()I
    .locals 2

    .line 163
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 164
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetVideoType(J)I

    move-result p0

    return p0
.end method

.method public insertBeautyFx(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1078
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1079
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBeautyFx(JI)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertBuiltinFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 966
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 967
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1042
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1043
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertPackagedFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .line 1006
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1007
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public isAmbiguousCropDisabled()Z
    .locals 2

    .line 327
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 328
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsAmbiguousCropDisabled(J)Z

    move-result p0

    return p0
.end method

.method public isClipHDREnabled()Z
    .locals 2

    .line 926
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 927
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsClipHDREnabled(J)Z

    move-result p0

    return p0
.end method

.method public isOriginalRender()Z
    .locals 2

    .line 845
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 846
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsOriginalRender(J)Z

    move-result p0

    return p0
.end method

.method public isPropertyVideoFxEnabled()Z
    .locals 2

    .line 897
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 898
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsPropertyVideoFxEnabled(J)Z

    move-result p0

    return p0
.end method

.method public isSlowMotionBlended()Z
    .locals 2

    .line 426
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 427
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsSlowMotionBlended(J)Z

    move-result p0

    return p0
.end method

.method public isSoftWareDeocedUsed()Z
    .locals 2

    .line 296
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 297
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsSoftWareDeocdingUsed(J)Z

    move-result p0

    return p0
.end method

.method public isVideoClipROIEnabled()Z
    .locals 2

    .line 395
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 396
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeIsVideoClipROIEnabled(J)Z

    move-result p0

    return p0
.end method

.method public removeAllFx()Z
    .locals 2

    .line 1111
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1112
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAllFx(J)Z

    move-result p0

    return p0
.end method

.method public removeFx(I)Z
    .locals 2

    .line 1096
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1097
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveFx(JI)Z

    move-result p0

    return p0
.end method

.method public setBlendingMode(I)V
    .locals 2

    .line 760
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 761
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetBlendingMode(JI)V

    return-void
.end method

.method public setClipWrapMode(I)V
    .locals 2

    .line 659
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetClipWrapMode(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDecodeTemporalLayer(I)V
    .locals 2

    .line 1141
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1142
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetDecodeTemporalLayer(JI)V

    return-void
.end method

.method public setEnableOriginalRender(Z)V
    .locals 2

    .line 828
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 829
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetEnableOriginalRender(JZ)V

    return-void
.end method

.method public setExtraVideoRotation(I)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 233
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetExtraVideoRotation(JI)V

    return-void
.end method

.method public setExtraVideoRotation(IZ)V
    .locals 2

    .line 249
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 250
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetExtraVideoRotation2(JIZ)V

    return-void
.end method

.method public setImageMaskROI(Landroid/graphics/RectF;)V
    .locals 2

    .line 643
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 644
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMaskROI(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public setImageMotionAnimationEnabled(Z)V
    .locals 2

    .line 552
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 553
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionAnimationEnabled(JZ)V

    return-void
.end method

.method public setImageMotionMode(I)V
    .locals 2

    .line 520
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 521
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionMode(JI)V

    return-void
.end method

.method public setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 607
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 608
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 794
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 795
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setPanAndScan(FF)V
    .locals 2

    .line 348
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 349
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPanAndScan(JFF)V

    return-void
.end method

.method public setPlayInReverse(Z)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 202
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPlayInReverse(JZ)V

    return-void
.end method

.method public setSoftWareDecoding(Z)V
    .locals 2

    .line 280
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 281
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSoftWareDecoding(JZ)V

    return-void
.end method

.method public setSourceBackgroundColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .line 472
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 473
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSourceBackgroundColor(JLcom/meicam/sdk/NvsColor;)V

    return-void
.end method

.method public setSourceBackgroundMode(I)V
    .locals 2

    .line 456
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 457
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSourceBackgroundMode(JI)V

    return-void
.end method
