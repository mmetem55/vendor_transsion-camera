.class Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;
.super Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;
.source "RenderImp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender<",
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

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RenderImp"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectRenderInit:Z

    .line 23
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    .line 24
    new-instance v1, Lcom/meicam/sdk/NvsRational;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsVideoRational:Lcom/meicam/sdk/NvsRational;

    .line 27
    iput-object v1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 33
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 34
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    return-void
.end method

.method private static generateLicensePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    return-object v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lic"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private installEffect(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->generateLicensePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

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

    .line 74
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsAssetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    .line 72
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {p0, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clearEffect(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->clearEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;)V

    return-void
.end method

.method public createEffect(IILjava/lang/String;)Lcom/meicam/effect/sdk/NvsVideoEffect;
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    new-instance v0, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v0, p2, p1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createEffect(IILjava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->createEffect(IILjava/lang/String;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectRenderInit:Z

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->destroy()V

    return-void
.end method

.method public installEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->installEffect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;IIIIJ)I
    .locals 10

    move-object v0, p0

    .line 86
    iget-boolean v1, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectRenderInit:Z

    if-nez v1, :cond_0

    .line 87
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mEffectRenderInit:Z

    .line 89
    :cond_0
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsVideoResolution:Lcom/meicam/sdk/NvsVideoResolution;

    move v1, p2

    iput v1, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    move v1, p3

    .line 90
    iput v1, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 91
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const-wide/16 v0, 0x3e8

    mul-long v7, p6, v0

    const/4 v9, 0x0

    move-object v3, p1

    move v4, p4

    move v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result v0

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 92
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return v0
.end method

.method public bridge synthetic renderEffect(Ljava/lang/Object;IIIIJ)I
    .locals 0

    .line 17
    check-cast p1, Lcom/meicam/effect/sdk/NvsVideoEffect;

    invoke-virtual/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;->renderEffect(Lcom/meicam/effect/sdk/NvsVideoEffect;IIIIJ)I

    move-result p0

    return p0
.end method
