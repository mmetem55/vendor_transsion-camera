.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "GLSurfaceViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->getSurfaceDestroyReason()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    .line 244
    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_1

    .line 246
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$800(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 247
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable setDefaultBufferSize, width:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 253
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 254
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed mPreviewSurface: + surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureDrawn()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 261
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    .line 263
    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 261
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_1

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$800(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_0

    .line 268
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged setDefaultBufferSize, width:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 273
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 274
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
