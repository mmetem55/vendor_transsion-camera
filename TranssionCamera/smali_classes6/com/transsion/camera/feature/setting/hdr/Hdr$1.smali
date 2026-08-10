.class Lcom/transsion/camera/feature/setting/hdr/Hdr$1;
.super Ljava/lang/Object;
.source "Hdr.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/Hdr;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    invoke-static {}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$100(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_ai_detection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "1"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "on"

    goto :goto_0

    :cond_2
    const-string p1, "off"

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$200(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$100(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->sendSettingChangeRequest()V

    :goto_1
    return-void
.end method
