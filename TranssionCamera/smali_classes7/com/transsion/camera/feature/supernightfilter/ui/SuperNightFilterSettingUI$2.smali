.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;
.super Ljava/lang/Object;
.source "SuperNightFilterSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 122
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "0"

    .line 123
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "-1"

    .line 124
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$000(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$200(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$200(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method
