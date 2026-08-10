.class final Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;
.super Landroid/os/Handler;
.source "FunVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecorderHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    .line 1443
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    .line 1444
    invoke-static {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$3802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    .line 1445
    sget-object p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6902(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;)Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;)V
    .locals 0

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    .line 1458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1472
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 1468
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    goto :goto_0

    .line 1464
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    goto :goto_0

    .line 1460
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1450
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1452
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->processMessage(Landroid/os/Message;)V

    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 1454
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

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
