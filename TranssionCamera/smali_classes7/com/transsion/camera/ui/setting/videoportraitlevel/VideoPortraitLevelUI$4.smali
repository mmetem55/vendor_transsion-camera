.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPortraitLevelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$1100(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_videoportrait_bar_hide"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
