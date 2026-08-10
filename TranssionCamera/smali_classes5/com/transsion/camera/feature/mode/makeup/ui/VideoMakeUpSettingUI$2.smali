.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;
.super Ljava/lang/Object;
.source "VideoMakeUpSettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_0
    return-void
.end method
