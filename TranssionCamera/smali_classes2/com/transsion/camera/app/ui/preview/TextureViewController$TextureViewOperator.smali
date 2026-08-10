.class Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "TextureViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/TextureViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureViewOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;)V

    return-void
.end method


# virtual methods
.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    div-int/lit8 p1, p1, 0x10

    .line 52
    div-int/lit8 p2, p2, 0x10

    .line 53
    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$000(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$000(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/PreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 44
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$000(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$TextureViewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$000(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;->previewRendered(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    return-void
.end method
