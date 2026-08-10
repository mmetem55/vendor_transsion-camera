.class public Lcom/transsion/secondaryhome/ContextHub;
.super Ljava/lang/Object;
.source "ContextHub.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;,
        Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHub"

.field static sRemoteContextHashMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field static sStubContextHashMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/transsion/secondaryhome/ContextHub;->sRemoteContextHashMap:Landroid/util/LruCache;

    .line 30
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/transsion/secondaryhome/ContextHub;->sStubContextHashMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 154
    sget-object v0, Lcom/transsion/secondaryhome/ContextHub;->sRemoteContextHashMap:Landroid/util/LruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 155
    sget-object v0, Lcom/transsion/secondaryhome/ContextHub;->sStubContextHashMap:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    return-void
.end method

.method private static createContext(Landroid/content/Context;Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    .line 145
    new-instance v0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;

    invoke-direct {v0, p0, p1}, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 146
    sget-object p0, Lcom/transsion/secondaryhome/ContextHub;->sRemoteContextHashMap:Landroid/util/LruCache;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    .line 119
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;

    if-eqz v0, :cond_0

    return-object p0

    .line 122
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 123
    sget-object v1, Lcom/transsion/secondaryhome/ContextHub;->sRemoteContextHashMap:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    return-object v1

    .line 128
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 129
    invoke-static {p0, v1, v0}, Lcom/transsion/secondaryhome/ContextHub;->createContext(Landroid/content/Context;Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const-string v2, "ContextHub"

    const-string v3, "getRemoteContext err:"

    .line 131
    invoke-static {v2, v3, v1}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-static {p0, p0, v0}, Lcom/transsion/secondaryhome/ContextHub;->createContext(Landroid/content/Context;Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 35
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 36
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 37
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 38
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;

    if-eqz v0, :cond_1

    .line 52
    check-cast p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;

    invoke-virtual {p0}, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;->getRealApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalStubContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->isRemoteContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/transsion/secondaryhome/ContextHub;->getLocalStubContext(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalStubContext(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 90
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    if-eqz v0, :cond_0

    return-object p0

    .line 93
    :cond_0
    sget-object v0, Lcom/transsion/secondaryhome/ContextHub;->sStubContextHashMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    .line 95
    const-class v1, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/transsion/secondaryhome/ContextHub;->sStubContextHashMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    invoke-static {p1}, Lcom/transsion/secondaryhome/ContextHub;->createRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 99
    sget-object p0, Lcom/transsion/secondaryhome/ContextHub;->sStubContextHashMap:Landroid/util/LruCache;

    invoke-virtual {p0, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 112
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    if-eqz v0, :cond_0

    .line 113
    check-cast p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;

    invoke-virtual {p0}, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;->getRemoteContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->createRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->createRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static isRemoteContext(Landroid/content/Context;)Z
    .locals 2

    .line 75
    instance-of v0, p0, Lcom/transsion/secondaryhome/ContextHub$RemoteViewsContextWrapper;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.secondaryhome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
