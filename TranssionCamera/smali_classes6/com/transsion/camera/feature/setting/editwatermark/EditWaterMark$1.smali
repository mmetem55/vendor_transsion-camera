.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;
.super Ljava/lang/Object;
.source "EditWaterMark.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "key_time_watermark"

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x65

    if-nez v1, :cond_0

    const-string v1, "key_edit_watermark_update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const-string v1, "key_picture_size"

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " return"

    const-string v4, "pictureSize = "

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$102(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)I

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    const-string v1, "key_picture_size_sat"

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq p1, v1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$102(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)I

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 136
    iput v2, p1, Landroid/os/Message;->what:I

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    const/4 p2, 0x1

    .line 138
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method
