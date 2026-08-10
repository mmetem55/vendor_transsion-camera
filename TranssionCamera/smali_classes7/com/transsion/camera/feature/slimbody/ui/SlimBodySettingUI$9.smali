.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 831
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_slimbody_info"

    .line 834
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "key_slimbody_face_beauty"

    .line 837
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    const-string v0, "key_multi_contrast"

    .line 841
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "slimbody_on"

    .line 842
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->openContrast()V

    goto :goto_1

    :cond_2
    const-string v0, "slimbody_off"

    .line 844
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    :cond_3
    :goto_1
    const-string v0, "key_multi_face_state"

    .line 848
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "value_multi_face_state_on"

    .line 849
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAlwaysHint()V

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    goto :goto_2

    :cond_4
    const-string v0, "value_multi_face_state_off"

    .line 854
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    :cond_5
    :goto_2
    const-string v0, "key_gender_attribute_value"

    .line 858
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "2"

    .line 859
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 860
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2302(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$9;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setGender(Ljava/lang/String;)V

    .line 863
    :cond_6
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGenderValue(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
