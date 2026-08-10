.class Lcom/transsion/ga/b;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/ga/b;->b:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sput-boolean v2, Lathena/k0;->d:Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lathena/k0;->d:Z

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.transsion.athena.track_event"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Athena receive action = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :try_start_0
    const-string p0, "tid"

    const-wide/16 v0, 0x0

    .line 9
    invoke-virtual {p2, p0, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    const-string v0, "eventName"

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trackData"

    .line 11
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/TrackData;

    const-string v2, "sessionId"

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "scode"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_2
    invoke-static {p0, p1}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    iget-boolean p2, p0, Lcom/transsion/ga/b;->b:Z

    if-eqz p2, :cond_4

    .line 22
    iput-boolean v2, p0, Lcom/transsion/ga/b;->b:Z

    return-void

    .line 26
    :cond_4
    :try_start_1
    invoke-static {p1}, Lathena/k0;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 27
    sget-boolean p0, Lathena/k0;->d:Z

    if-eqz p0, :cond_6

    .line 28
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->submitAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string p0, "android.location.PROVIDERS_CHANGED"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x270f

    .line 43
    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    const/16 p1, 0x1f6

    const-wide/16 v0, 0xbb8

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->a(IJ)V

    :cond_6
    :goto_0
    return-void
.end method
