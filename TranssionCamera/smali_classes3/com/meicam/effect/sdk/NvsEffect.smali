.class public Lcom/meicam/effect/sdk/NvsEffect;
.super Ljava/lang/Object;
.source "NvsEffect.java"


# static fields
.field public static final FACE_WARP_EFFECT_STRATEGY_CUSTOM:I = 0x7fffffff

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_AFTER:I = 0x2

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_BEFORE:I = 0x1

.field public static final REGION_COORDINATE_SYSTEM_TYPE_NDC:I = 0x0

.field public static final REGION_COORDINATE_SYSTEM_TYPE_TIMELINE:I = 0x1


# instance fields
.field m_internalObject:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1046
    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    return-void
.end method

.method private native nativeDestory(J)V
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;
.end method

.method private native nativeGetBooleanVal(JLjava/lang/String;J)Z
.end method

.method private native nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetFilterIntensity(J)F
.end method

.method private native nativeGetFilterMask(J)Z
.end method

.method private native nativeGetFloatVal(JLjava/lang/String;J)D
.end method

.method private native nativeGetIgnoreBackground(J)Z
.end method

.method private native nativeGetIntVal(JLjava/lang/String;J)I
.end method

.method private native nativeGetInverseRegion(J)Z
.end method

.method private native nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeGetPaintingEffectContext(J)Lcom/meicam/sdk/NvsPaintingEffectContext;
.end method

.method private native nativeGetParticleSystemContext(J)Lcom/meicam/sdk/NvsParticleSystemContext;
.end method

.method private native nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;
.end method

.method private native nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;
.end method

.method private native nativeGetRegionCoordinateSystemType(J)I
.end method

.method private native nativeGetRegional(J)Z
.end method

.method private native nativeGetRegionalFeatherWidth(J)F
.end method

.method private native nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeHasKeyframeList(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveAllKeyframe(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z
.end method

.method private native nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V
.end method

.method private native nativeSetBooleanVal(JLjava/lang/String;ZJ)V
.end method

.method private native nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V
.end method

.method private native nativeSetFilterIntensity(JF)V
.end method

.method private native nativeSetFilterMask(JZ)V
.end method

.method private native nativeSetFloatVal(JLjava/lang/String;DJ)V
.end method

.method private native nativeSetIgnoreBackground(JZ)V
.end method

.method private native nativeSetIntVal(JLjava/lang/String;IJ)V
.end method

.method private native nativeSetInverseRegion(JZ)V
.end method

.method private native nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V
.end method

.method private native nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V
.end method

.method private native nativeSetRegion(J[F)V
.end method

.method private native nativeSetRegionCoordinateSystemType(JI)V
.end method

.method private native nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V
.end method

.method private native nativeSetRegional(JZ)V
.end method

.method private native nativeSetRegionalFeatherWidth(JF)V
.end method

.method private native nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1060
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1061
    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeDestory(J)V

    .line 1062
    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    .line 1065
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    .line 741
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getARSceneManipulate()Lcom/meicam/sdk/NvsARSceneManipulate;
    .locals 2

    .line 1043
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanVal(Ljava/lang/String;)Z
    .locals 6

    .line 250
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getBooleanValAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 285
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 286
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getColorVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 384
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getColorValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 421
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 422
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Lcom/meicam/sdk/NvsFxDescription;
    .locals 2

    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity()F
    .locals 2

    .line 771
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetFilterIntensity(J)F

    move-result p0

    return p0
.end method

.method public getFilterMask()Z
    .locals 2

    .line 1005
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1006
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetFilterMask(J)Z

    move-result p0

    return p0
.end method

.method public getFloatVal(Ljava/lang/String;)D
    .locals 6

    .line 184
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloatValAtTime(Ljava/lang/String;J)D
    .locals 6

    .line 219
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 220
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getIgnoreBackground()Z
    .locals 2

    .line 834
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 835
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetIgnoreBackground(J)Z

    move-result p0

    return p0
.end method

.method public getIntVal(Ljava/lang/String;)I
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getIntValAtTime(Ljava/lang/String;J)I
    .locals 6

    .line 153
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 154
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method protected getInternalObject()J
    .locals 2

    .line 1055
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    return-wide v0
.end method

.method public getInverseRegion()Z
    .locals 2

    .line 866
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 867
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetInverseRegion(J)Z

    move-result p0

    return p0
.end method

.method public getMenuVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 601
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMenuValAtTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 638
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 639
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaintingEffectContext()Lcom/meicam/sdk/NvsPaintingEffectContext;
    .locals 2

    .line 1032
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1033
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetPaintingEffectContext(J)Lcom/meicam/sdk/NvsPaintingEffectContext;

    move-result-object p0

    return-object p0
.end method

.method public getParticleSystemContext()Lcom/meicam/sdk/NvsParticleSystemContext;
    .locals 2

    .line 1026
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1027
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetParticleSystemContext(J)Lcom/meicam/sdk/NvsParticleSystemContext;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 456
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 495
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 496
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 529
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 568
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 569
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getRegionCoordinateSystemType()I
    .locals 2

    .line 973
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 974
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetRegionCoordinateSystemType(J)I

    move-result p0

    return p0
.end method

.method public getRegional()Z
    .locals 2

    .line 802
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 803
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetRegional(J)Z

    move-result p0

    return p0
.end method

.method public getRegionalFeatherWidth()F
    .locals 2

    .line 942
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 943
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetRegionalFeatherWidth(J)F

    move-result p0

    return p0
.end method

.method public getStringVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 316
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValAtTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 351
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 352
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    .line 722
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 5

    .line 1018
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1019
    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeDestory(J)V

    .line 1020
    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    :cond_0
    return-void
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 692
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public setArbDataVal(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;)V
    .locals 7

    .line 656
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setArbDataValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V
    .locals 7

    .line 674
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setBooleanVal(Ljava/lang/String;Z)V
    .locals 7

    .line 235
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setBooleanValAtTime(Ljava/lang/String;ZJ)V
    .locals 7

    .line 267
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 268
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setColorVal(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;)V
    .locals 7

    .line 368
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setColorValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;J)V
    .locals 7

    .line 402
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 403
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 2

    .line 756
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetFilterIntensity(JF)V

    return-void
.end method

.method public setFilterMask(Z)V
    .locals 2

    .line 989
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 990
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetFilterMask(JZ)V

    return-void
.end method

.method public setFloatVal(Ljava/lang/String;D)V
    .locals 8

    .line 169
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setFloatValAtTime(Ljava/lang/String;DJ)V
    .locals 8

    .line 201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 202
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setIgnoreBackground(Z)V
    .locals 2

    .line 818
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 819
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetIgnoreBackground(JZ)V

    return-void
.end method

.method public setIntVal(Ljava/lang/String;I)V
    .locals 7

    .line 103
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setIntValAtTime(Ljava/lang/String;IJ)V
    .locals 7

    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method protected setInternalObject(J)V
    .locals 0

    .line 1050
    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    return-void
.end method

.method public setInverseRegion(Z)V
    .locals 2

    .line 850
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 851
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetInverseRegion(JZ)V

    return-void
.end method

.method public setMenuVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 585
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setMenuValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 619
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 620
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setPosition2DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 7

    .line 439
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition2DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V
    .locals 7

    .line 475
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 476
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition3DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;)V
    .locals 7

    .line 512
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setPosition3DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V
    .locals 7

    .line 548
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 549
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setRegion([F)V
    .locals 2

    .line 881
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 882
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegion(J[F)V

    return-void
.end method

.method public setRegionCoordinateSystemType(I)V
    .locals 2

    .line 957
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 958
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegionCoordinateSystemType(JI)V

    return-void
.end method

.method public setRegionInfo(Lcom/meicam/sdk/NvsMaskRegionInfo;)V
    .locals 6

    .line 896
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 897
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegionInfoAtTime(Lcom/meicam/sdk/NvsMaskRegionInfo;J)V
    .locals 6

    .line 911
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 912
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegional(Z)V
    .locals 2

    .line 786
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 787
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegional(JZ)V

    return-void
.end method

.method public setRegionalFeatherWidth(F)V
    .locals 2

    .line 926
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 927
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetRegionalFeatherWidth(JF)V

    return-void
.end method

.method public setStringVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 301
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStringValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 333
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 334
    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsEffect;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
