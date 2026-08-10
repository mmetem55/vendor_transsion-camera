.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;
.super Landroid/os/Handler;
.source "EditWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    .line 559
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 8

    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v2, :cond_1

    .line 575
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    const-string v1, "off"

    if-nez v0, :cond_2

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$700(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_edit_watermark_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "VALUE_edit_watermark_state_writing"

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 588
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetSize height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 591
    div-int/lit8 v0, p1, 0x4

    .line 592
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$800(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "default_edit_watermark_text_size"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0xd80

    .line 593
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_city_watermark_info"

    invoke-virtual {v4, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$902(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v3, p1, v0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;III)V

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    const-string v0, "value_edit_watermark_on"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "VALUE_edit_watermark_state_done"

    .line 597
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->sendMessageIfNeed()V

    .line 601
    :cond_6
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "MSG_EDIT_WATERMARK_HANDLE"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private sendMessageIfNeed()V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$1600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getTimeInSecond()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x65

    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 565
    sget-object v2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " START"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->processMessage(Landroid/os/Message;)V

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " END process time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
