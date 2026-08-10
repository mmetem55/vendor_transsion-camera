.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public static synthetic $r8$lambda$2KNs6BqJiarmBCCU5OKTfAfj_yQ(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->lambda$surfaceCreatedCallback$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method private synthetic lambda$surfaceCreatedCallback$0()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->updateEffect()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeUninitCallback()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->releaseRenderResource()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->releaseRenderResource()V

    return-void
.end method
