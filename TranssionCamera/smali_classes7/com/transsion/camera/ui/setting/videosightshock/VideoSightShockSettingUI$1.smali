.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoSightShockSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockSettingUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
