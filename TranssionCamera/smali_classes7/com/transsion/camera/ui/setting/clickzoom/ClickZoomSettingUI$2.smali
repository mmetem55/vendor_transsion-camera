.class Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClickZoomSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->updateLayoutParams(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

.field final synthetic val$orientation:I

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    iput p2, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->val$orientation:I

    iput p3, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->val$screenFormType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->val$orientation:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->val$screenFormType:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$200(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;II)V

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$300(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
