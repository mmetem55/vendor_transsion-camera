.class Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundBlurPreview"
.end annotation


# static fields
.field private static final SCALE_RATIO:I = 0x19


# instance fields
.field private mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1111
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode$1;)V
    .locals 0

    .line 1111
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;-><init>()V

    return-void
.end method

.method private createRender()V
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-nez v0, :cond_0

    .line 1143
    new-instance v0, Lcom/transsion/camera/utils/gles/render/BlurRender;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    .line 1144
    new-instance p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/gles/render/BlurRender;->config(Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;)V

    :cond_0
    return-void
.end method

.method private destroyRender()V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;->release()V

    const/4 v0, 0x0

    .line 1151
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/BlurRender;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1161
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeInitCallback()V
    .locals 0

    .line 1119
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 1120
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->createRender()V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 0

    .line 1125
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 1126
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->destroyRender()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1131
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 1132
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->createRender()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1137
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 1138
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->destroyRender()V

    return-void
.end method
