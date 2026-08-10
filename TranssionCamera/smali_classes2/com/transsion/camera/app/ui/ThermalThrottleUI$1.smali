.class Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;
.super Ljava/lang/Object;
.source "ThermalThrottleUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ThermalThrottleUI;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;->this$0:Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->hide(Z)V

    const/4 p0, 0x1

    return p0
.end method
