.class Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StereoViewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->fadeOut(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

.field final synthetic val$wheelView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;Landroid/view/View;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;->val$wheelView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$2;->val$wheelView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
