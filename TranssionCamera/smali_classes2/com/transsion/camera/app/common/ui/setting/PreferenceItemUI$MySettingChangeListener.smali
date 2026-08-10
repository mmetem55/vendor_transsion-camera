.class Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "PreferenceItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
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
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$500(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "key_restore_settings"

    .line 488
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 489
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$500(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
