.class public Lcom/transsion/secondaryhome/bridge/HomeLauncherBridge;
.super Ljava/lang/Object;
.source "HomeLauncherBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugPackage(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "kolun_secondaryHome_sdk"

    const-string v0, "HomeLauncherBridge.isDebugPackage() method Local direct call is not supported!!!"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static sendTrackingData(ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "HomeLauncherBridge.sendTrackingData() method Local direct call is not supported!!!"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
