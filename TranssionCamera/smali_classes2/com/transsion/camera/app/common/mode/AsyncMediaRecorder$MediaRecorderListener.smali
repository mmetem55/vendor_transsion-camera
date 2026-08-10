.class Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;
.super Ljava/lang/Object;
.source "AsyncMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V
    .locals 0

    .line 565
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;)V

    return-void
.end method

.method private errorHappened(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reachedMax(I)Z
    .locals 0

    const/16 p0, 0x320

    if-eq p1, p0, :cond_1

    const/16 p0, 0x321

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 569
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->errorHappened(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->access$200(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;I)V

    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 576
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->reachedMax(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->access$200(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;I)V

    :cond_0
    const/16 p1, -0x3f3

    if-ne p3, p1, :cond_1

    .line 580
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onInfo ERROR_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->access$200(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;I)V

    :cond_1
    return-void
.end method
