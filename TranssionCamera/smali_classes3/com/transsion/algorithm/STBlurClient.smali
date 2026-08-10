.class Lcom/transsion/algorithm/STBlurClient;
.super Ljava/lang/Object;
.source "STBlurClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/algorithm/STBlurClient$Preview;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFrontCamera:Z

.field private volatile mHasFace:Z

.field private mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

.field private volatile mSTBlurOn:Z

.field private mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/algorithm/STBlurClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurOn:Z

    const-string v0, "license.lic"

    .line 42
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/algorithm/STBlurClient$Preview;-><init>(Lcom/transsion/algorithm/STBlurClient;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    .line 44
    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->getInstance(Ljava/lang/String;)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/algorithm/STBlurClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/algorithm/STBlurClient;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurClient;->mFrontCamera:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/algorithm/STBlurClient;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurClient;->mHasFace:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/algorithm/STBlurClient;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurOn:Z

    return p0
.end method


# virtual methods
.method public changeConfigs(Lcom/transsion/algorithm/STBlurConfig;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig;->isHasFace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurClient;->mHasFace:Z

    .line 59
    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurOn:Z

    return-void
.end method

.method public configSTBlur(Lcom/transsion/algorithm/STBlurConfig;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurClient;->mFrontCamera:Z

    return-void
.end method

.method public drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIIII)Z
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/algorithm/STBlurClient$Preview;->drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result p0

    return p0
.end method

.method getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-object p0
.end method

.method public initPreviewBlurGLThread()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient$Preview;->initPreviewBlurGLThread()V

    return-void
.end method

.method public initRender()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient$Preview;->initRender()V

    return-void
.end method

.method public initSTBlur()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient$Preview;->initSTBlur()V

    return-void
.end method

.method public processPreviewBlur([BIII)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/algorithm/STBlurClient$Preview;->processPreviewBlur([BIII)V

    return-void
.end method

.method public unInitPreviewBlurGLThread()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient$Preview;->unInitPreviewBlurGLThread()V

    return-void
.end method

.method public unInitSTBlur()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient$Preview;->unInitSTBlur()V

    return-void
.end method

.method public updateBlurLevel(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient$Preview;->updateBlurLevel(I)V

    return-void
.end method

.method public updateKernel(I)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurClient;->mSTBlurPreview:Lcom/transsion/algorithm/STBlurClient$Preview;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient$Preview;->updateKernel(I)V

    return-void
.end method
