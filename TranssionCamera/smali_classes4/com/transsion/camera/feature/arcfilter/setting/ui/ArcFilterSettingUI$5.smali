.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArcFilterSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onCollapseDone()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$500(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$500(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$600(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$600(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

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

    .line 522
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->onCollapseDone()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 528
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 529
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;->onCollapseDone()V

    return-void
.end method
