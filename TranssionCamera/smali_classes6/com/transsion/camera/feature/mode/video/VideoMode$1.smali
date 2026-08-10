.class Lcom/transsion/camera/feature/mode/video/VideoMode$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 579
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[mPauseResumeListener] click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_0

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->pauseResume()V

    goto :goto_0

    .line 583
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$200(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    :goto_0
    return-void
.end method
