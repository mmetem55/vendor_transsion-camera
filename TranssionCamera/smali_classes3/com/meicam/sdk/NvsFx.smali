.class public Lcom/meicam/sdk/NvsFx;
.super Lcom/meicam/sdk/NvsObject;
.source "NvsFx.java"


# static fields
.field public static final FACE_WARP_EFFECT_STRATEGY_CUSTOM:I = 0x7fffffff

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_AFTER:I = 0x2

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_BEFORE:I = 0x1

.field public static final REGION_COORDINATE_SYSTEM_TYPE_NDC:I = 0x0

.field public static final REGION_COORDINATE_SYSTEM_TYPE_TIMELINE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/meicam/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeClearExprVar(JLjava/lang/String;)V
.end method

.method private native nativeClearExprVarCtx(J)V
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetARFaceContext(J)Lcom/meicam/sdk/NvsARFaceContext;
.end method

.method private native nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;
.end method

.method private native nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsArbitraryData;
.end method

.method private native nativeGetBooleanVal(JLjava/lang/String;J)Z
.end method

.method private native nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetExprVar(JLjava/lang/String;)D
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

.method private native nativeGetRegion(J)[F
.end method

.method private native nativeGetRegionCoordinateSystemType(J)I
.end method

.method private native nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;
.end method

.method private native nativeGetRegional(J)Z
.end method

.method private native nativeGetRegionalFeatherWidth(J)F
.end method

.method private native nativeGetRegionalFeatherWidthAtTime(JJ)F
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

.method private native nativeSetExprVar(JLjava/lang/String;D)V
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

.method private native nativeSetRegionalFeatherWidthAtTime(JFJ)V
.end method

.method private native nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method


# virtual methods
.method public clearExprVar(Ljava/lang/String;)V
    .locals 2

    .line 1187
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1188
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeClearExprVar(JLjava/lang/String;)V

    return-void
.end method

.method public clearExprVarCtx()V
    .locals 2

    .line 1201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1202
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeClearExprVarCtx(J)V

    return-void
.end method

.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    .line 771
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getARFaceContext()Lcom/meicam/sdk/NvsARFaceContext;
    .locals 2

    .line 1124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1125
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetARFaceContext(J)Lcom/meicam/sdk/NvsARFaceContext;

    move-result-object p0

    return-object p0
.end method

.method public getARSceneManipulate()Lcom/meicam/sdk/NvsARSceneManipulate;
    .locals 2

    .line 1141
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1142
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetARSceneManipulate(J)Lcom/meicam/sdk/NvsARSceneManipulate;

    move-result-object p0

    return-object p0
.end method

.method public getArbDataVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsArbitraryData;
    .locals 6

    .line 686
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsArbitraryData;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanVal(Ljava/lang/String;)Z
    .locals 6

    .line 257
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 258
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getBooleanValAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 293
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 294
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getColorVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 395
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 396
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getColorValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsColor;
    .locals 6

    .line 433
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 434
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Lcom/meicam/sdk/NvsFxDescription;
    .locals 2

    .line 89
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 90
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetDescription(J)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object p0

    return-object p0
.end method

.method public getExprVar(Ljava/lang/String;)D
    .locals 2

    .line 1173
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1174
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeGetExprVar(JLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFilterIntensity()F
    .locals 2

    .line 802
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 803
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetFilterIntensity(J)F

    move-result p0

    return p0
.end method

.method public getFilterMask()Z
    .locals 2

    .line 834
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 835
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetFilterMask(J)Z

    move-result p0

    return p0
.end method

.method public getFloatVal(Ljava/lang/String;)D
    .locals 6

    .line 189
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 190
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloatValAtTime(Ljava/lang/String;J)D
    .locals 6

    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getIgnoreBackground()Z
    .locals 2

    .line 898
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 899
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetIgnoreBackground(J)Z

    move-result p0

    return p0
.end method

.method public getIntVal(Ljava/lang/String;)I
    .locals 6

    .line 121
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 122
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getIntValAtTime(Ljava/lang/String;J)I
    .locals 6

    .line 157
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 158
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getInverseRegion()Z
    .locals 2

    .line 930
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 931
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetInverseRegion(J)Z

    move-result p0

    return p0
.end method

.method public getMenuVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 619
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 620
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMenuValAtTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 657
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 658
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaintingEffectContext()Lcom/meicam/sdk/NvsPaintingEffectContext;
    .locals 2

    .line 1130
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1131
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetPaintingEffectContext(J)Lcom/meicam/sdk/NvsPaintingEffectContext;

    move-result-object p0

    return-object p0
.end method

.method public getParticleSystemContext()Lcom/meicam/sdk/NvsParticleSystemContext;
    .locals 2

    .line 1118
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1119
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetParticleSystemContext(J)Lcom/meicam/sdk/NvsParticleSystemContext;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 469
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 470
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;
    .locals 6

    .line 509
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 510
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DVal(Ljava/lang/String;)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 545
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 546
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DValAtTime(Ljava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;
    .locals 6

    .line 585
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 586
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getRegion()[F
    .locals 2

    .line 959
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 960
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegion(J)[F

    move-result-object p0

    return-object p0
.end method

.method public getRegionCoordinateSystemType()I
    .locals 2

    .line 1112
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1113
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionCoordinateSystemType(J)I

    move-result p0

    return p0
.end method

.method public getRegionInfo()Lcom/meicam/sdk/NvsMaskRegionInfo;
    .locals 4

    .line 988
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 989
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRegionInfoAtTime(J)Lcom/meicam/sdk/NvsMaskRegionInfo;
    .locals 2

    .line 1017
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1018
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/sdk/NvsMaskRegionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRegional()Z
    .locals 2

    .line 866
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 867
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegional(J)Z

    move-result p0

    return p0
.end method

.method public getRegionalFeatherWidth()F
    .locals 2

    .line 1049
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1050
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionalFeatherWidth(J)F

    move-result p0

    return p0
.end method

.method public getRegionalFeatherWidthAtTime(J)F
    .locals 2

    .line 1081
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1082
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsFx;->nativeGetRegionalFeatherWidthAtTime(JJ)F

    move-result p0

    return p0
.end method

.method public getStringVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 325
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 326
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValAtTime(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 6

    .line 361
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 362
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    .line 752
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    .line 737
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    .line 722
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public setArbDataVal(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;)V
    .locals 7

    .line 674
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setArbDataValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V
    .locals 7

    .line 704
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setBooleanVal(Ljava/lang/String;Z)V
    .locals 7

    .line 241
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 242
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setBooleanValAtTime(Ljava/lang/String;ZJ)V
    .locals 7

    .line 275
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 276
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setColorVal(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;)V
    .locals 7

    .line 378
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 379
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setColorValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsColor;J)V
    .locals 7

    .line 414
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 415
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/sdk/NvsColor;J)V

    return-void
.end method

.method public setExprVar(Ljava/lang/String;D)V
    .locals 6

    .line 1157
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1158
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetExprVar(JLjava/lang/String;D)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 2

    .line 786
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 787
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetFilterIntensity(JF)V

    return-void
.end method

.method public setFilterMask(Z)V
    .locals 2

    .line 818
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 819
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetFilterMask(JZ)V

    return-void
.end method

.method public setFloatVal(Ljava/lang/String;D)V
    .locals 8

    .line 173
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 174
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setFloatValAtTime(Ljava/lang/String;DJ)V
    .locals 8

    .line 207
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 208
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setIgnoreBackground(Z)V
    .locals 2

    .line 882
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 883
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetIgnoreBackground(JZ)V

    return-void
.end method

.method public setIntVal(Ljava/lang/String;I)V
    .locals 7

    .line 105
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 106
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setIntValAtTime(Ljava/lang/String;IJ)V
    .locals 7

    .line 139
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 140
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setInverseRegion(Z)V
    .locals 2

    .line 914
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 915
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetInverseRegion(JZ)V

    return-void
.end method

.method public setMenuVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 602
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 603
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setMenuValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 638
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 639
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setPosition2DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;)V
    .locals 7

    .line 451
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 452
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition2DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V
    .locals 7

    .line 489
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 490
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition3DVal(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;)V
    .locals 7

    .line 527
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 528
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setPosition3DValAtTime(Ljava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V
    .locals 7

    .line 565
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 566
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setRegion([F)V
    .locals 2

    .line 945
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 946
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegion(J[F)V

    return-void
.end method

.method public setRegionCoordinateSystemType(I)V
    .locals 2

    .line 1096
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1097
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionCoordinateSystemType(JI)V

    return-void
.end method

.method public setRegionInfo(Lcom/meicam/sdk/NvsMaskRegionInfo;)V
    .locals 6

    .line 974
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 975
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegionInfoAtTime(Lcom/meicam/sdk/NvsMaskRegionInfo;J)V
    .locals 6

    .line 1003
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1004
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegional(Z)V
    .locals 2

    .line 850
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 851
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegional(JZ)V

    return-void
.end method

.method public setRegionalFeatherWidth(F)V
    .locals 2

    .line 1033
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1034
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionalFeatherWidth(JF)V

    return-void
.end method

.method public setRegionalFeatherWidthAtTime(FJ)V
    .locals 6

    .line 1064
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1065
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsFx;->nativeSetRegionalFeatherWidthAtTime(JFJ)V

    return-void
.end method

.method public setStringVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 309
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 310
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStringValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 343
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 344
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
