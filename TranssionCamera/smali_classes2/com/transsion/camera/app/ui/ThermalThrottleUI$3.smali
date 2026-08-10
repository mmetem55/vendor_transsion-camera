.class Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThermalThrottleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ThermalThrottleUI;->fadeOut(Landroid/view/View;)V
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

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
