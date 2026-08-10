.class public Lcom/transsion/sdk/oneid/data/UserIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public account_id:Ljava/lang/String;

.field public account_type:Ljava/lang/String;

.field public tripartite_id:Ljava/lang/String;

.field public tripartite_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    .line 9
    :try_start_0
    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object p1

    const-string v0, "user_id"

    .line 10
    invoke-virtual {p1, v0}, Loneid/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "account_type"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_type:Ljava/lang/String;

    const-string p1, "account_id"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->account_id:Ljava/lang/String;

    const-string p1, "tripartite_type"

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_type:Ljava/lang/String;

    const-string p1, "tripartite_id"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/UserIdInfo;->tripartite_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
