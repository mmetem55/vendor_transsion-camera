.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->draw(Landroid/graphics/SurfaceTexture;III)Z

    .line 1174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->forceRender()V

    :cond_0
    return-void
.end method
