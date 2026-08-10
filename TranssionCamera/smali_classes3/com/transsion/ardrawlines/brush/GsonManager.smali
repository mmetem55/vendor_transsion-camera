.class public Lcom/transsion/ardrawlines/brush/GsonManager;
.super Ljava/lang/Object;
.source "GsonManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GsonManager"

.field private static gson:Lcom/google/gson/Gson;

.field private static gsonManager:Lcom/transsion/ardrawlines/brush/GsonManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    sput-object p0, Lcom/transsion/ardrawlines/brush/GsonManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 33
    sget-object p0, Lcom/transsion/ardrawlines/brush/GsonManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/ardrawlines/brush/GsonManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/transsion/ardrawlines/brush/GsonManager;->gsonManager:Lcom/transsion/ardrawlines/brush/GsonManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/transsion/ardrawlines/brush/GsonManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/transsion/ardrawlines/brush/GsonManager;->gsonManager:Lcom/transsion/ardrawlines/brush/GsonManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/transsion/ardrawlines/brush/GsonManager;

    invoke-direct {v1}, Lcom/transsion/ardrawlines/brush/GsonManager;-><init>()V

    sput-object v1, Lcom/transsion/ardrawlines/brush/GsonManager;->gsonManager:Lcom/transsion/ardrawlines/brush/GsonManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/ardrawlines/brush/GsonManager;->gsonManager:Lcom/transsion/ardrawlines/brush/GsonManager;

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/transsion/ardrawlines/brush/GsonManager;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 54
    sget-object p0, Lcom/transsion/ardrawlines/brush/GsonManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
