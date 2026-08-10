.class Lcom/transsion/ga/AthenaAnalytics$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->c:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics$e;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/AthenaAnalytics$e;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2
    sget-boolean v0, Lathena/k0;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->b:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->b:Ljava/text/SimpleDateFormat;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->b:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsion/ga/AthenaAnalytics$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "app_heartbeat"

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 9
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->c:Ljava/lang/String;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$e;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
