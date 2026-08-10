.class Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;
.super Ljava/lang/Object;
.source "AbstractFlashAdjustUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->loadAnimation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return-void
.end method
