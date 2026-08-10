.class public Lcom/transsion/athena/data/TrackData;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/athena/data/TrackData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/athena/data/TrackData$a;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData$a;-><init>()V

    sput-object v0, Lcom/transsion/athena/data/TrackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/athena/data/TrackData;->b:I

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/athena/data/TrackData;->b:I

    .line 358
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/athena/data/TrackData;->b:I

    .line 359
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 361
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;DI)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;DI)Lcom/transsion/athena/data/TrackData;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 133
    iput p4, p0, Lcom/transsion/athena/data/TrackData;->b:I

    :cond_0
    if-eqz p4, :cond_3

    const/4 v0, 0x1

    const-string v1, "&"

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    :try_start_0
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 147
    :cond_2
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "add"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 148
    :cond_3
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 67
    iput p3, p0, Lcom/transsion/athena/data/TrackData;->b:I

    :cond_0
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    const-string v1, "&"

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 81
    :cond_2
    iget-object p3, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "add"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 82
    :cond_3
    iget-object p3, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;JI)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;JI)Lcom/transsion/athena/data/TrackData;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 100
    iput p4, p0, Lcom/transsion/athena/data/TrackData;->b:I

    :cond_0
    if-eqz p4, :cond_3

    const/4 v0, 0x1

    const-string v1, "&"

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 114
    :cond_2
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "add"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 115
    :cond_3
    iget-object p4, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/transsion/athena/data/TrackData;
    .locals 5

    if-nez p2, :cond_0

    return-object p0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 199
    iput p3, p0, Lcom/transsion/athena/data/TrackData;->b:I

    .line 201
    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 202
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_6

    const/4 v3, 0x1

    if-eq p3, v3, :cond_5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    goto/16 :goto_2

    .line 221
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTranslator()Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    move-result-object v4

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/transsion/ga/AthenaAnalytics$ITranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 225
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 229
    :cond_4
    iget-object p2, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 230
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "json object can not set TRACK_ADD flag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTranslator()Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    move-result-object v4

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/transsion/ga/AthenaAnalytics$ITranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 235
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 238
    :cond_8
    iget-object p2, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 259
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 4
    iput p3, p0, Lcom/transsion/athena/data/TrackData;->b:I

    :cond_0
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTranslator()Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/transsion/ga/AthenaAnalytics$ITranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "json object can not set TRACK_ADD flag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    iget-object p3, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTranslator()Lcom/transsion/ga/AthenaAnalytics$ITranslator;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/transsion/ga/AthenaAnalytics$ITranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public b()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/data/TrackData;->b:I

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/transsion/athena/data/TrackData;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p0, p0, Lcom/transsion/athena/data/TrackData;->a:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
