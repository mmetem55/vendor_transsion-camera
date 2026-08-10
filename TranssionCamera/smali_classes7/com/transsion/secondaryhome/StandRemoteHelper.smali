.class public Lcom/transsion/secondaryhome/StandRemoteHelper;
.super Ljava/lang/Object;
.source "StandRemoteHelper.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StandRemoteHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStubView(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "name"

    .line 56
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "params"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static invokeStubView(Landroid/widget/RemoteViews;ILjava/lang/String;I)V
    .locals 2

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "params"

    .line 44
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "name"

    .line 45
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "invokeStubMethod"

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static startUnfoldRelayActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 84
    invoke-static {p0, p1, v0}, Lcom/transsion/secondaryhome/StandRemoteHelper;->startUnfoldRelayActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public static startUnfoldRelayActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    :try_start_0
    const-string v0, "source"

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 99
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 101
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " call startUnfoldRelayActivity failed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "StandRemoteHelper"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static startUnfoldRelayActivity(Landroid/content/Context;Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;)V
    .locals 0

    .line 72
    invoke-virtual {p1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/secondaryhome/StandRemoteHelper;->startUnfoldRelayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startUnfoldRelayActivity(Landroid/content/Context;Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;I)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Lcom/transsion/secondaryhome/StandRemoteHelper$RelayIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/transsion/secondaryhome/StandRemoteHelper;->startUnfoldRelayActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method
