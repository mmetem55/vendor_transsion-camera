.class final Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;
.super Landroid/os/Handler;
.source "QuickCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/QuickCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecorderHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;Lcom/transsion/camera/app/common/provider/QuickCaptureManager$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;-><init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    goto :goto_1

    .line 192
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$600(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    goto :goto_1

    .line 183
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    if-nez p1, :cond_0

    .line 185
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error MSG_PROCESS_SAVE_DATA, qcItem is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$500(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;[BZLcom/transsion/camera/app/common/mode/ICameraMode;)V

    goto :goto_1

    .line 174
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    if-nez p1, :cond_1

    .line 176
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error MSG_PROCESS_THUMBNAIL, qcItem is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$400(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    goto :goto_1

    .line 170
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$200(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Z)V

    goto :goto_1

    .line 166
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$100(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;I)V

    goto :goto_1

    .line 196
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->access$700(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->processMessage(Landroid/os/Message;)V

    return-void
.end method
