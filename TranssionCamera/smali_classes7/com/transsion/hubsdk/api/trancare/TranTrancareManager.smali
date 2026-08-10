.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.super Ljava/lang/Object;
.source "TranTrancareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTrancareManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isEnabled(J)Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->isEnabledInternal(J)Z

    move-result p0

    return p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    .line 161
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 165
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;->serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
