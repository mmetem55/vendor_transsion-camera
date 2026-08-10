.class public Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.source "SuperNightFilterMode.java"


# static fields
.field private static final ALGORITHM_LICENSE:Ljava/lang/String; = "assets:/meishesdk.lic"

.field public static final RENDER_EFFECT_OK:I = 0x0

.field public static final RENDER_EFFECT_SDK_ERROR:I = -0x1

.field public static final RENDER_WITHOUT_EFFECT:I = -0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCount:I


# instance fields
.field private mBackCamera:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFilterId:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field private mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

.field private mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private final mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance p1, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;-><init>(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->drawPreview(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createFilterEffect(II)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-nez v1, :cond_0

    .line 214
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mEffectWidth:I

    .line 215
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mEffectHeight:I

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {v1, p1, p2, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->createEffect(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    :cond_0
    return-void
.end method

.method private destroyNvsStreamingContext()V
    .locals 0

    .line 100
    sget p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 101
    sput p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    .line 103
    :cond_0
    sget p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    if-nez p0, :cond_1

    .line 104
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    :cond_1
    return-void
.end method

.method private drawPreview(Landroid/graphics/SurfaceTexture;III)Z
    .locals 11

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {p1, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->requestTexturePair(II)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 159
    aget v8, p1, v0

    const/4 v1, 0x1

    .line 160
    aget p1, p1, v1

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    iget-boolean v7, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mBackCamera:Z

    const/4 v6, 0x0

    move v2, p2

    move v3, v8

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->renderOesTextureTo2DTexture(IIIIIZ)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v6, v1, v9

    .line 165
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->updateFilterEffect(II)V

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, v8

    move v5, p1

    .line 166
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->render(IIIIJ)I

    move-result p2

    if-nez p2, :cond_0

    .line 168
    invoke-direct {p0, p1, v8, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x4

    if-ne p2, v1, :cond_1

    .line 170
    invoke-direct {p0, v8, p1, p3, p4}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->onDraw(IIII)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private initEffectSdkContext(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "assets:/meishesdk.lic"

    invoke-static {p1, v1, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    :cond_0
    return-void
.end method

.method private initStreamingContext(Landroid/content/Context;)V
    .locals 1

    .line 83
    sget p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->sCount:I

    .line 84
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    if-nez p0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x4

    const-string v0, "assets:/meishesdk.lic"

    invoke-static {p0, v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    :cond_0
    return-void
.end method

.method private onDraw(IIII)Z
    .locals 6

    const/4 p2, 0x0

    .line 178
    invoke-static {p2, p2, p4, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->drawTexture(IIIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateFilterEffect(II)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->clearFilterEffect()V

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->updateFilterId()V

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->createFilterEffect(II)V

    return-void
.end method

.method private updateFilterId()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_supernight_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterName:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->getFilterIdByFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->getFilterInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->installEffect(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFilterEffect()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->clearEffect(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    .line 227
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clearEffectResource end "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "key_supernight_filter"

    .line 112
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 115
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 120
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterModeRestriction;->getEmptyRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 59
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->initStreamingContext(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->initEffectSdkContext(Landroid/content/Context;)V

    .line 62
    new-instance p2, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;

    iget-object p4, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-direct {p2, p4}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;-><init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    .line 63
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 64
    iget-object p3, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 66
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->updateCameraFace(Z)V

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method public releaseRenderResource()V
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->clearFilterEffect()V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    invoke-interface {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->destroy()V

    .line 234
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseRenderResource finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public render(IIIIJ)I
    .locals 8

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mRenderEffect:Lcom/meicam/effect/sdk/NvsVideoEffect;

    if-eqz v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mFilterRender:Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;

    const-wide/16 v2, 0x3e8

    mul-long v6, p5, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;->renderEffect(Ljava/lang/Object;IIIIJ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x4

    :goto_0
    return p0
.end method

.method public unInit()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInit()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->destroyNvsStreamingContext()V

    .line 78
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "supernight uninit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCameraFace(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->mBackCamera:Z

    return-void
.end method
