.class public Lcom/bytedance/labcv/core/effect/EffectManager;
.super Ljava/lang/Object;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;,
        Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final USE_PIPELINE:Z = true


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFilterIntensity:F

.field private mFilterResource:Ljava/lang/String;

.field private mOnEffectListener:Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;

.field protected mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

.field private mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

.field private mSavedComposerNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerResource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/bytedance/labcv/core/effect/EffectManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/labcv/core/effect/EffectManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/labcv/core/effect/EffectResourceProvider;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterIntensity:F

    .line 49
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    return-void
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 330
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p1, v0

    .line 331
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getSavedComposerNodes(Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 703
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 707
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    .line 708
    iget-object v0, v0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appendComposeNodes([Ljava/lang/String;)Z
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v0}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getComposePath()Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 247
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, v1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->appendComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method protected checkResult(Ljava/lang/String;I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    if-eq p2, p0, :cond_0

    const/16 v0, -0xb

    if-eq p2, v0, :cond_0

    .line 746
    sget-object p0, Lcom/bytedance/labcv/core/effect/EffectManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", formatErrorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-static {p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->formatErrorCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 746
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public cleanPipeline()Z
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->cleanPipeline()Z

    move-result p0

    return p0
.end method

.method public destroy()I
    .locals 1

    const-string v0, "destroyEffectSDK"

    .line 125
    invoke-static {v0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->stop()V

    .line 127
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->release()V

    const-string p0, "destroyEffectSDK finish"

    .line 128
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableFeatures([Ljava/lang/String;)Z
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getAvailableFeatures([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getFaceDetectResult()Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getFaceDetectResult()Lcom/bytedance/labcv/effectsdk/BefFaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFaceMaskResult(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;)Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
    .locals 1

    .line 494
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;-><init>()V

    .line 495
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getFaceMaskResult(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;Lcom/bytedance/labcv/effectsdk/BefFaceInfo;)V

    return-object v0
.end method

.method public getHandDetectResult()Lcom/bytedance/labcv/effectsdk/BefHandInfo;
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getHandDetectResult()Lcom/bytedance/labcv/effectsdk/BefHandInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSkeletonDetectResult()Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSkeletonDetectResult()Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;

    move-result-object p0

    return-object p0
.end method

.method public init()I
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Effect SDK version ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {v1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/labcv/core/util/OrientationSensor;->start(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v2}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getModelPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v3}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getLicensePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/RenderManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "mRenderManager.init"

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/labcv/core/effect/EffectManager;->checkResult(Ljava/lang/String;I)Z

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1}, Lcom/bytedance/labcv/core/effect/EffectManager;->set3Buffer(Z)Z

    .line 73
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mOnEffectListener:Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;->onEffectInitialized()V

    :cond_1
    return v0
.end method

.method public onCameraChanged()V
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->cleanPipeline()Z

    return-void
.end method

.method public process(IIIIJ)Z
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-static {}, Lcom/bytedance/labcv/core/util/OrientationSensor;->getOrientation()Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->processTexture(IIIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;J)Z

    move-result p0

    return p0
.end method

.method public recoverStatus()V
    .locals 6

    const-string v0, "recover status"

    .line 674
    invoke-static {v0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setFilter(Ljava/lang/String;)Z

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mStickerResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mStickerResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setSticker(Ljava/lang/String;)Z

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedComposerNodes size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/bytedance/labcv/core/effect/EffectManager;->getSavedComposerNodes(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v1}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getComposePath()Ljava/lang/String;

    move-result-object v1

    .line 686
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 687
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {v0, v2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setComposerNodes([Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateComposerNodes node ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " intensity ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->intensity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 696
    iget-object v4, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    iget-object v5, v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    iget v2, v2, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->intensity:F

    invoke-virtual {v4, v3, v5, v2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->updateComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I

    goto :goto_1

    .line 699
    :cond_3
    iget v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterIntensity:F

    invoke-virtual {p0, v0}, Lcom/bytedance/labcv/core/effect/EffectManager;->updateFilterIntensity(F)Z

    return-void
.end method

.method public removeComposeNodes([Ljava/lang/String;)Z
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v0}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getComposePath()Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 270
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 272
    iget-object v4, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 273
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    iget-object v5, v5, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    aget-object v6, p1, v3

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_2
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, v1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->removeComposerNodes([Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public set3Buffer(Z)Z
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->set3Buffer(Z)Z

    move-result p0

    return p0
.end method

.method public setCameraPosition(Z)V
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    if-nez p0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setCameraPostion(Z)Z

    return-void
.end method

.method public setComposeNodes([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/labcv/core/effect/EffectManager;->setComposeNodes([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setComposeNodes([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    iget-object v1, v1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/labcv/core/effect/EffectManager;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v0}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getComposePath()Ljava/lang/String;

    move-result-object v0

    .line 307
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 308
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    :cond_2
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setComposerNodesWithTags([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public setFilter(Ljava/lang/String;)Z
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v0, p1}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getFilterPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterResource:Ljava/lang/String;

    .line 178
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setFilter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOnEffectListener(Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mOnEffectListener:Lcom/bytedance/labcv/core/effect/EffectManager$OnEffectListener;

    return-void
.end method

.method public setPipeline(Z)Z
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setPipeline(Z)Z

    move-result p0

    return p0
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Z
    .locals 8

    .line 555
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setRenderCacheTextureWithBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSticker(Ljava/lang/String;)Z
    .locals 1

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v0, p1}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getStickerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mStickerResource:Ljava/lang/String;

    .line 389
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setSticker(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setStickerAbs(Ljava/lang/String;)Z
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mStickerResource:Ljava/lang/String;

    .line 408
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->setSticker(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateComposerNodeIntensity(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 2

    .line 355
    new-instance v0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    .line 356
    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mSavedComposerNodes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mResourceProvider:Lcom/bytedance/labcv/core/effect/EffectResourceProvider;

    invoke-interface {v1}, Lcom/bytedance/labcv/core/effect/EffectResourceProvider;->getComposePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateComposerNodes node ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intensity ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/RenderManager;->updateComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateFilterIntensity(F)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mRenderManager:Lcom/bytedance/labcv/effectsdk/RenderManager;

    sget-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->Filter:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    invoke-virtual {v1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->updateIntensity(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager;->mFilterIntensity:F

    :cond_0
    return v0
.end method
