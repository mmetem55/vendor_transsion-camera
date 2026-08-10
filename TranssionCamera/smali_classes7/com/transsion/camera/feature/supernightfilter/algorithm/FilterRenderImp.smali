.class public Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;
.super Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;
.source "FilterRenderImp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender<",
        "Lcom/meicam/effect/sdk/NvsVideoEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final LICENSE_TAIL:Ljava/lang/String; = ".lic"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEffectRenderInit:Z

.field private final mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private final mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

.field private final mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private final mNvsVideoRational:Lcom/meicam/sdk/NvsRational;

.field private final mNvsVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RenderImp"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mEffectRenderInit:Z

    .line 22
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    .line 23
    new-instance v1, Lcom/meicam/sdk/NvsRational;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsVideoRational:Lcom/meicam/sdk/NvsRational;

    .line 25
    iput-object v1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 31
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 32
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    return-void
.end method

.method private static generateLicensePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lic"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private installEffect(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->generateLicensePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " installEffect failed:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    .line 66
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {p0, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clearEffect(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->clearEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;)V

    return-void
.end method

.method public createEffect(IILjava/lang/String;)Lcom/meicam/effect/sdk/NvsVideoEffect;
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    new-instance v0, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v0, p1, p2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createEffect(IILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->createEffect(IILjava/lang/String;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->destroy()V

    return-void
.end method

.method public installEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->installEffect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;IIIIJ)I
    .locals 10

    move-object v0, p0

    .line 80
    iget-boolean v1, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mEffectRenderInit:Z

    if-nez v1, :cond_0

    .line 81
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mEffectRenderInit:Z

    .line 83
    :cond_0
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    move v1, p2

    iput v1, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    move v1, p3

    .line 84
    iput v1, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 85
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v9, 0x0

    move-object v3, p1

    move v4, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v2 .. v9}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result v0

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 86
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return v0
.end method

.method public bridge synthetic renderEffect(Ljava/lang/Object;IIIIJ)I
    .locals 0

    .line 16
    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    invoke-virtual/range {p0 .. p7}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderImp;->renderEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;IIIIJ)I

    move-result p0

    return p0
.end method
