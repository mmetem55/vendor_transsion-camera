.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;
.super Ljava/lang/Object;
.source "VideoPortraitLevelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_video_portrait"

    .line 91
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string p0, "key_video_portrait_level"

    .line 94
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method
