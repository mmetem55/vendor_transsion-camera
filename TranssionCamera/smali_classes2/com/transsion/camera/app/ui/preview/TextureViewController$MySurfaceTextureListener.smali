.class Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;
.super Ljava/lang/Object;
.source "TextureViewController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/TextureViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;Lcom/transsion/camera/app/ui/preview/TextureViewController$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/TextureViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 133
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$300(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$400(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 134
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$500(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 135
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$500(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$300(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$400(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$302(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)I

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$402(Lcom/transsion/camera/app/ui/preview/TextureViewController;I)I

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$500(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$500(Lcom/transsion/camera/app/ui/preview/TextureViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$300(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/TextureViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;->access$400(Lcom/transsion/camera/app/ui/preview/TextureViewController;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
