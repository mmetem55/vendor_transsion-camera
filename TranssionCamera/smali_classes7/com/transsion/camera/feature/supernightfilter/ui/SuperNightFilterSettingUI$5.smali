.class Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;
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

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onCollapseDone()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$500(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$500(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$600(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->access$600(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_filter_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 502
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 503
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->onCollapseDone()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 508
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 509
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;->onCollapseDone()V

    return-void
.end method
