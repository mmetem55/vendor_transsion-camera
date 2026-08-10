.class Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThermalThrottleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ThermalThrottleUI;->fadeIn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->hide(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHasShow:Z

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
