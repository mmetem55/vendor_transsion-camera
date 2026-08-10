.class public Lcom/transsion/analysislibrary/StatisticAnalysis;
.super Ljava/lang/Object;
.source "StatisticAnalysis.java"


# static fields
.field private static instance:Lcom/transsion/analysislibrary/StatisticAnalysis;

.field private static mParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/analysislibrary/IParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnableAthenaAnalytics:Z

.field private mEnableFirebaseAnalytics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mParsers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZIZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p2, p0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mEnableFirebaseAnalytics:Z

    .line 22
    iput-boolean p3, p0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mEnableAthenaAnalytics:Z

    if-eqz p2, :cond_0

    .line 25
    sget-object p0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mParsers:Ljava/util/List;

    new-instance p2, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;

    invoke-direct {p2, p1, p6}, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;-><init>(Landroid/content/Context;Z)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 29
    sget-object p0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mParsers:Ljava/util/List;

    new-instance p2, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;

    invoke-direct {p2, p1, p4, p5, p6}, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;-><init>(Landroid/content/Context;IZZ)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;ZZIZZ)Lcom/transsion/analysislibrary/StatisticAnalysis;
    .locals 9

    .line 34
    sget-object v0, Lcom/transsion/analysislibrary/StatisticAnalysis;->instance:Lcom/transsion/analysislibrary/StatisticAnalysis;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/transsion/analysislibrary/StatisticAnalysis;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/transsion/analysislibrary/StatisticAnalysis;->instance:Lcom/transsion/analysislibrary/StatisticAnalysis;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/transsion/analysislibrary/StatisticAnalysis;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/transsion/analysislibrary/StatisticAnalysis;-><init>(Landroid/content/Context;ZZIZZ)V

    sput-object v1, Lcom/transsion/analysislibrary/StatisticAnalysis;->instance:Lcom/transsion/analysislibrary/StatisticAnalysis;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/analysislibrary/StatisticAnalysis;->instance:Lcom/transsion/analysislibrary/StatisticAnalysis;

    return-object p0
.end method

.method public static sendMsg(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)V"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/analysislibrary/IParser;

    .line 46
    invoke-interface {v1, p0}, Lcom/transsion/analysislibrary/IParser;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)V"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/transsion/analysislibrary/StatisticAnalysis;->mParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/analysislibrary/IParser;

    .line 52
    invoke-interface {v1, p0, p1}, Lcom/transsion/analysislibrary/IParser;->sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
