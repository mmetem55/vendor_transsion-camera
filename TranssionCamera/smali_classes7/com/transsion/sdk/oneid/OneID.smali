.class public Lcom/transsion/sdk/oneid/OneID;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static transient a:Z = true

.field private static volatile b:Lcom/transsion/sdk/oneid/OneID;


# instance fields
.field private final c:Lcom/transsion/sdk/oneid/e;

.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/sdk/oneid/OneID;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->c:Lcom/transsion/sdk/oneid/e;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/infra/gateway/core/GatewaySignManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/transsion/sdk/oneid/OneID;->b:Lcom/transsion/sdk/oneid/OneID;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/transsion/sdk/oneid/OneID;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/sdk/oneid/OneID;->b:Lcom/transsion/sdk/oneid/OneID;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/transsion/sdk/oneid/OneID;

    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/OneID;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/sdk/oneid/OneID;->b:Lcom/transsion/sdk/oneid/OneID;

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/sdk/oneid/OneID;->b:Lcom/transsion/sdk/oneid/OneID;

    .line 8
    iget-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/sdk/oneid/OneID;->c:Lcom/transsion/sdk/oneid/e;

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/sdk/oneid/e;->b(I)V

    return-void

    .line 12
    :cond_3
    new-instance p0, Lcom/transsion/sdk/oneid/OneIDException;

    const-string p1, "OneID not init yet"

    invoke-direct {p0, p1}, Lcom/transsion/sdk/oneid/OneIDException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static instance()Lcom/transsion/sdk/oneid/OneID;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/OneID;->b:Lcom/transsion/sdk/oneid/OneID;

    return-object v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/sdk/oneid/OneID;->a:Z

    return v0
.end method


# virtual methods
.method public getVAID()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/sdk/oneid/OneID;->c:Lcom/transsion/sdk/oneid/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sdk/oneid/e;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
