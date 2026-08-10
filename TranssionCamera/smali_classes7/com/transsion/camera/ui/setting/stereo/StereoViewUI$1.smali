.class Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;
.super Ljava/lang/Object;
.source "StereoViewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$300(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$300(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$400(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$400(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$500(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$600(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI$1;->this$0:Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;->access$700(Lcom/transsion/camera/ui/setting/stereo/StereoViewUI;)V

    :goto_0
    return-void
.end method
