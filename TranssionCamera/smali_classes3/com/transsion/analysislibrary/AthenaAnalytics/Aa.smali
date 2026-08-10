.class public Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;
.super Ljava/lang/Object;
.source "Aa.java"


# static fields
.field private static volatile mInstance:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;


# instance fields
.field private ATHENA_DEBUG:Z

.field private ATHENA_HOST:Z

.field private ATHENA_TID:I


# direct methods
.method private constructor <init>(Landroid/content/Context;IZZ)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_TID:I

    .line 41
    iput-boolean p3, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_HOST:Z

    .line 42
    iput-boolean p4, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_DEBUG:Z

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/analysislibrary/R$string;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p1, p0, p2, p4, p3}, Lcom/transsion/ga/AthenaAnalytics;->init(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 60
    invoke-static {p4}, Lcom/transsion/ga/AthenaAnalytics;->setDebug(Z)V

    .line 61
    invoke-static {p4}, Lcom/transsion/ga/AthenaAnalytics;->setTest(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;IZZ)Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;
    .locals 2

    .line 29
    sget-object v0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->mInstance:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->mInstance:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;-><init>(Landroid/content/Context;IZZ)V

    sput-object v1, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->mInstance:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->mInstance:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    return-object p0
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget v0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_TID:I

    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    iget p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_TID:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/ga/AthenaAnalytics;->trackTimes(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/transsion/athenacust/AthenaCust;

    iget p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->ATHENA_TID:I

    invoke-direct {v0, p1, p0}, Lcom/transsion/athenacust/AthenaCust;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p2, p0}, Lcom/transsion/athenacust/AthenaCust;->trackCommon(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/transsion/athenacust/AthenaCust;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athenacust/AthenaCust;->submit()V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p1, p2}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
