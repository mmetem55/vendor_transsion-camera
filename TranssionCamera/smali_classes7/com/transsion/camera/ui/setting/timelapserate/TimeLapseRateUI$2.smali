.class Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;
.super Ljava/lang/Object;
.source "TimeLapseRateUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
