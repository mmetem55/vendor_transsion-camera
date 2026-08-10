.class abstract Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;-><init>()V

    .line 16
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setSize(II)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->inFinalizer()Z

    move-result p0

    if-nez p0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 23
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
