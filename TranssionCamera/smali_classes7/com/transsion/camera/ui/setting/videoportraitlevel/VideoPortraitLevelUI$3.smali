.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPortraitLevelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->addAnimatorListener()V
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

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 294
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$1000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;->setAnimState(Z)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$600(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$1000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->access$1000(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;->setAnimState(Z)V

    .line 304
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
