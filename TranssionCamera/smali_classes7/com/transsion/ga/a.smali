.class public Lcom/transsion/ga/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ga/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:I

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/ga/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/ga/a;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/transsion/ga/a;->c:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/transsion/ga/a;->e:J

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/ga/a;->f:I

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/transsion/ga/a;->g:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/transsion/ga/a;->i:I

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/transsion/ga/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ga/a;->i:I

    return p1
.end method

.method static synthetic a(Lcom/transsion/ga/a;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/transsion/ga/a;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/transsion/ga/a;)Ljava/util/LinkedList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 12
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    if-gt v0, v1, :cond_2

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez p1, :cond_2

    if-gt p1, v1, :cond_2

    return p0

    :cond_2
    return v1

    :cond_3
    return p0
.end method

.method static synthetic a(Lcom/transsion/ga/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/ga/a;->c:Z

    return p1
.end method


# virtual methods
.method a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/transsion/ga/a;->k:J

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->t()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Lcom/transsion/ga/a;->i:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/transsion/ga/a;->i:I

    .line 6
    iget-object v8, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    new-instance v9, Lcom/transsion/ga/a$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v9

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ga/a$b;-><init>(Lcom/transsion/ga/a;ILjava/lang/String;J)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget v1, p0, Lcom/transsion/ga/a;->b:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/transsion/ga/a;->b:I

    const/4 v2, 0x0

    if-gt v1, v7, :cond_6

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/ga/a;->h:J

    .line 12
    iget-boolean v1, p0, Lcom/transsion/ga/a;->c:Z

    if-eqz v1, :cond_6

    .line 13
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    :try_start_2
    sget-object v3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/f;->c(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/ga/a;->e:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/ga/a;->g:Ljava/lang/String;

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/ga/a;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 133
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "android.intent.category.LAUNCHER"

    .line 134
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 141
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    .line 142
    :goto_1
    iput v7, p0, Lcom/transsion/ga/a;->f:I

    .line 143
    iget-object v1, p0, Lcom/transsion/ga/a;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 144
    iput p1, p0, Lcom/transsion/ga/a;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 148
    :try_start_4
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 150
    :cond_5
    :goto_2
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "purl"

    .line 151
    invoke-virtual {p1, v1, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 152
    iget-wide v0, p0, Lcom/transsion/ga/a;->k:J

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v1, "page_enter"

    :try_start_5
    iget-wide v3, p0, Lcom/transsion/ga/a;->k:J

    invoke-virtual {v0, v1, p1, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 156
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/ga/a;->c:Z

    .line 157
    iget-object p1, p0, Lcom/transsion/ga/a;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 158
    iget-object v0, p0, Lcom/transsion/ga/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/transsion/ga/a;->d:Ljava/lang/Runnable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 163
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 11

    const-string v0, "ext"

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->t()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "t"

    const-string v3, ""

    const-string v4, "s_id"

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v5, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/ga/a$b;

    .line 6
    iget-object v7, v6, Lcom/transsion/ga/a$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/transsion/ga/a$b;->c:J

    sub-long/2addr v7, v9

    .line 8
    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 9
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "url"

    :try_start_2
    iget-object v9, v6, Lcom/transsion/ga/a$b;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "no"

    :try_start_3
    iget v9, v6, Lcom/transsion/ga/a$b;->a:I

    .line 11
    invoke-virtual {v1, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v9

    .line 13
    :goto_0
    invoke-virtual {v1, v2, v7, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v5, "athena"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {v1, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    .line 21
    :cond_2
    iget-wide v7, p0, Lcom/transsion/ga/a;->k:J

    invoke-static {v7, v8}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "page_view"

    :try_start_4
    iget-wide v7, p0, Lcom/transsion/ga/a;->k:J

    invoke-virtual {p1, v0, v1, v7, v8}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 22
    iget-object p1, p0, Lcom/transsion/ga/a;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 28
    :cond_3
    iget p1, p0, Lcom/transsion/ga/a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/ga/a;->b:I

    if-nez p1, :cond_7

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/transsion/ga/a;->h:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v0, v5

    if-lez p1, :cond_5

    const-wide/32 v5, 0x5265c00

    cmp-long p1, v0, v5

    if-gez p1, :cond_5

    .line 32
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    .line 33
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "s_t"

    :try_start_5
    iget v5, p0, Lcom/transsion/ga/a;->f:I

    .line 34
    invoke-virtual {p1, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "pkg"

    :try_start_6
    iget v5, p0, Lcom/transsion/ga/a;->f:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget-object v3, p0, Lcom/transsion/ga/a;->g:Ljava/lang/String;

    .line 35
    :cond_4
    invoke-virtual {p1, v4, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v3, "s_s"

    :try_start_7
    iget-wide v4, p0, Lcom/transsion/ga/a;->e:J

    .line 36
    invoke-virtual {p1, v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 38
    iget-wide v0, p0, Lcom/transsion/ga/a;->k:J

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "app_active"

    :try_start_8
    iget-wide v2, p0, Lcom/transsion/ga/a;->k:J

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/transsion/ga/a;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 42
    iget-object v0, p0, Lcom/transsion/ga/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :cond_6
    iget-object p1, p0, Lcom/transsion/ga/a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/ga/a$a;

    invoke-direct {v0, p0}, Lcom/transsion/ga/a$a;-><init>(Lcom/transsion/ga/a;)V

    iput-object v0, p0, Lcom/transsion/ga/a;->d:Ljava/lang/Runnable;

    .line 54
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->o()J

    move-result-wide v1

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
