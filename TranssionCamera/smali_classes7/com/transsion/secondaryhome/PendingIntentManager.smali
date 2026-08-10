.class public Lcom/transsion/secondaryhome/PendingIntentManager;
.super Ljava/lang/Object;
.source "PendingIntentManager.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLaunchOptions(I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    const-string p0, "kolun_secondaryHome_sdk"

    const-string v0, "PendingIntentManager.getLaunchOptions() method Local direct call is not supported!!!"

    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static startPendingIntent(Landroid/content/Context;ILandroid/app/PendingIntent;)Z
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "PendingIntentManager.startPendingIntent() method Local direct call is not supported!!!"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static startPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "PendingIntentManager.startPendingIntent() method Local direct call is not supported!!!"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "PendingIntentManager.startPendingIntent() method Local direct call is not supported!!!"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
