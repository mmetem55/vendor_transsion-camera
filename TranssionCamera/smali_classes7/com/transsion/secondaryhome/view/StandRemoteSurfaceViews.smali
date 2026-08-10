.class public Lcom/transsion/secondaryhome/view/StandRemoteSurfaceViews;
.super Lcom/transsion/secondaryhome/view/StandRemoteViews;
.source "StandRemoteSurfaceViews.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/secondaryhome/view/StandRemoteViews;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/transsion/secondaryhome/view/StandRemoteViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized setViewStubClass(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "kolun_secondaryHome_sdk"

    const-string v0, "StandRemoteSurfaceViews.setViewStubClass() method Local direct call is not supported!!!"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
