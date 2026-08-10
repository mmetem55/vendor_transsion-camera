.class public Lcom/transsion/camera/utils/gles/render/BlurRender;
.super Ljava/lang/Object;
.source "BlurRender.java"

# interfaces
.implements Lcom/transsion/camera/utils/gles/render/IBlurRender;


# instance fields
.field private final mImpl:Lcom/transsion/camera/utils/gles/render/IBlurRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GaussianBlur;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/BlurRender;->mImpl:Lcom/transsion/camera/utils/gles/render/IBlurRender;

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/BlurRender;->mImpl:Lcom/transsion/camera/utils/gles/render/IBlurRender;

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/gles/render/IBlurRender;->config(Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;)V

    return-void
.end method

.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/BlurRender;->mImpl:Lcom/transsion/camera/utils/gles/render/IBlurRender;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/IBlurRender;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/BlurRender;->mImpl:Lcom/transsion/camera/utils/gles/render/IBlurRender;

    invoke-interface {p0}, Lcom/transsion/camera/utils/gles/render/IBlurRender;->release()V

    return-void
.end method
