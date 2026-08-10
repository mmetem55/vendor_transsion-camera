.class public Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final INTERVAL:J = 0x64L

.field private static sLastClicked:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastClick()Z
    .locals 4

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;->sLastClicked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;->sLastClicked:J

    const/4 v0, 0x1

    return v0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/feature/mode/makeup/utils/CommonUtils;->sLastClicked:J

    const/4 v0, 0x0

    return v0
.end method
