.class final Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;
.super Landroid/os/Handler;
.source "DualVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecorderHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    .line 132
    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)Z

    .line 133
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)Z

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)Z

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->processMessage(Landroid/os/Message;)V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 142
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " end process time:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
