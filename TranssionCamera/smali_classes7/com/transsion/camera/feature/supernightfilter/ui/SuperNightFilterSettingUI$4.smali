.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperNightFilterSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 488
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$500(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$500(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$600(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$600(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_filter_ui_on"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
