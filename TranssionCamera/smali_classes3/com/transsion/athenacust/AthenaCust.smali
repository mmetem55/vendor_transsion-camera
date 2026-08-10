.class public Lcom/transsion/athenacust/AthenaCust;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/athena/data/TrackData;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p2

    .line 9
    iput-wide v0, p0, Lcom/transsion/athenacust/AthenaCust;->c:J

    .line 10
    iput-object p1, p0, Lcom/transsion/athenacust/AthenaCust;->b:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lcom/transsion/athenacust/AthenaCust;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/transsion/athenacust/AthenaCust;->a:Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    :cond_0
    return-void
.end method


# virtual methods
.method public submit()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/transsion/athenacust/AthenaCust;->c:J

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transsion/athenacust/AthenaCust;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/athenacust/AthenaCust;->a:Lcom/transsion/athena/data/TrackData;

    iget-wide v3, p0, Lcom/transsion/athenacust/AthenaCust;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public trackCommon(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/transsion/athenacust/AthenaCust;
    .locals 1

    const-string v0, "eparam"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/transsion/athenacust/AthenaCust;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ext"

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/athenacust/AthenaCust;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
