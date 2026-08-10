.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;
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

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
