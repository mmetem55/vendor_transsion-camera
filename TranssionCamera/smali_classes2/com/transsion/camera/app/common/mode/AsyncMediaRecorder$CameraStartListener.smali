.class Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;
.super Ljava/lang/Object;
.source "AsyncMediaRecorder.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V
    .locals 0

    .line 553
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->operationPrepared()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;->this$0:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->startMediaRecorder()V

    return-void
.end method
