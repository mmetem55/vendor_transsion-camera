.class interface abstract Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;
.super Ljava/lang/Object;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IBrightnessDetector"
.end annotation


# virtual methods
.method public abstract correctTime()V
.end method

.method public abstract detect(I)Z
.end method

.method public abstract lowLight()Z
.end method

.method public abstract reset()V
.end method
