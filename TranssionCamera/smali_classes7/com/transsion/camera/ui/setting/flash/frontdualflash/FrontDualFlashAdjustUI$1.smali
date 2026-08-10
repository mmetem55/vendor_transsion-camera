.class Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;
.super Ljava/lang/Object;
.source "FrontDualFlashAdjustUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->loadAnimation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->processAnimationComplete()V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1502(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1402(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z

    return-void
.end method
