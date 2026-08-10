.class public Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;
.super Ljava/lang/Object;
.source "SafeStringUtils.java"


# static fields
.field private static INSTANCE:Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    invoke-direct {v1, p0}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    .line 26
    :cond_0
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    const-string v0, "gateway_core"

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLong(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 93
    invoke-direct {p0, v0}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    .line 101
    :try_start_0
    invoke-interface {p0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v1
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "data"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 74
    invoke-direct {p0, v0}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    .line 82
    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
