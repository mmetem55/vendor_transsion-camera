.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;
.super Ljava/lang/Object;
.source "STBlurClient.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/stblurmode/ISTBlurClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;
    }
.end annotation


# static fields
.field private static final LICENSE_NAME:Ljava/lang/String; = "license.lic"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFrontCamera:Z

.field private volatile mHasFace:Z

.field private mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

.field private volatile mSTBlurOn:Z

.field private mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurOn:Z

    const-string v0, "license.lic"

    .line 41
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    .line 43
    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->getInstance(Ljava/lang/String;)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mFrontCamera:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mHasFace:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurOn:Z

    return p0
.end method


# virtual methods
.method public changeConfigs(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->isHasFace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mHasFace:Z

    .line 58
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurOn:Z

    return-void
.end method

.method public configSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurConfig;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mFrontCamera:Z

    return-void
.end method

.method public drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result p0

    return p0
.end method

.method getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurCapture:Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    return-object p0
.end method

.method public initPreviewBlurGLThread()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->initPreviewBlurGLThread()V

    return-void
.end method

.method public initRender()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->initRender()V

    return-void
.end method

.method public initSTBlur()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->initSTBlur()V

    return-void
.end method

.method public processPreviewBlur([BIII)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->processPreviewBlur([BIII)V

    return-void
.end method

.method public unInitPreviewBlurGLThread()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->unInitPreviewBlurGLThread()V

    return-void
.end method

.method public unInitSTBlur()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient;->mSTBlurPreview:Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurClient$Preview;->unInitSTBlur()V

    return-void
.end method
