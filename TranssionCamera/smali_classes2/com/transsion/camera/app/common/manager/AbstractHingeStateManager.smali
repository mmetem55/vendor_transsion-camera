.class public abstract Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;
.super Ljava/lang/Object;
.source "AbstractHingeStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final DEVICE_STATE_CLOSED:I = 0x0

.field public static final DEVICE_STATE_HALF_OPENED:I = 0x1

.field public static final DEVICE_STATE_OPENED:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public abstract registerDeviceStateCallback(Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;Landroid/os/Handler;)V
.end method

.method public abstract unregisterDeviceStateCallback()V
.end method
