.class public interface abstract Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;
.super Ljava/lang/Object;
.source "IAODThermalThrottleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;
    }
.end annotation


# virtual methods
.method public abstract inflateView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setThermalThrottleOperator(Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;)V
.end method

.method public abstract setupView()V
.end method
