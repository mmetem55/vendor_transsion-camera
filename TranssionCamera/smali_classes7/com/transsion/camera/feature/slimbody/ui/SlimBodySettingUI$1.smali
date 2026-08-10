.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 4

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    const-string v0, "0"

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_slimbody_contrast"

    .line 157
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    iput-object v0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->contrastState:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_slim_body_contrast"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "contrast_off"

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public openContrast()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "key_slimbody_contrast"

    .line 132
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iput-object v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->contrastState:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_slim_body_contrast"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "contrast_on"

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
