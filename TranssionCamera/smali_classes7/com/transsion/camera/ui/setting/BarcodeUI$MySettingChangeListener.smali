.class Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "BarcodeUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;Lcom/transsion/camera/ui/setting/BarcodeUI$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "key_setting_barcode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    if-nez p2, :cond_1

    const-string p2, "key_super_definition"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$502(Lcom/transsion/camera/ui/setting/BarcodeUI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$400(Lcom/transsion/camera/ui/setting/BarcodeUI;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$502(Lcom/transsion/camera/ui/setting/BarcodeUI;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
