.class public interface abstract Lcom/transsion/camera/gsensor/IStableMonitor;
.super Ljava/lang/Object;
.source "IStableMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/gsensor/IStableMonitor$IStatusCallback;
    }
.end annotation


# direct methods
.method public static statusToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "STATUS_WRONG"

    return-object p0

    :cond_0
    const-string p0, "STATUS_STABLE"

    return-object p0

    :cond_1
    const-string p0, "STATUS_UNSTABLE"

    return-object p0

    :cond_2
    const-string p0, "STATUS_UNKNOWN"

    return-object p0
.end method
