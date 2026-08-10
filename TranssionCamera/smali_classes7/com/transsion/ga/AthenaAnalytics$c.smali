.class final Lcom/transsion/ga/AthenaAnalytics$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->a()Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->a(Lcom/transsion/ga/AthenaAnalytics;)V

    .line 2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->a()Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->b(Lcom/transsion/ga/AthenaAnalytics;)V

    :cond_0
    return-void
.end method
