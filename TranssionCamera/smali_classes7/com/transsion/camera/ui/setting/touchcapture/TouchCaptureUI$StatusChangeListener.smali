.class Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "TouchCaptureUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 193
    invoke-static {}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->access$200(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->access$200(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
