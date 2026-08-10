.class Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;
.super Ljava/lang/Object;
.source "ThermalThrottleUrgentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;->this$0:Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;->this$0:Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;->this$0:Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
