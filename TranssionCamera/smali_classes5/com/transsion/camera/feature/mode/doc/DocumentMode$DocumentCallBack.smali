.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocumentCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawExtra(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I

    move-result p1

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$108(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I

    return-void

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->draw(Z)V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->clearLineShader()V

    :cond_1
    return-void
.end method

.method public modeInitCallback()V
    .locals 1

    .line 328
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    new-instance v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;-><init>()V

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    :cond_0
    return-void
.end method

.method public modeUninitCallback()V
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->unInit()V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    :cond_0
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 336
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-nez p1, :cond_0

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    new-instance p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;-><init>()V

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    :cond_0
    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->unInit()V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    :cond_0
    return-void
.end method
