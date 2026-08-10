.class public Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;
.super Ljava/lang/Object;
.source "DebugModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$HOLDER;
    }
.end annotation


# static fields
.field private static final VASDK_DEBUG_MODE:Ljava/lang/String; = "vcsdk_debug_mode"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->setDebugMode()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;
    .locals 1

    .line 21
    invoke-static {}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$HOLDER;->access$000()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    move-result-object v0

    return-object v0
.end method

.method private setDebugMode()V
    .locals 2

    .line 38
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "vcsdk_debug_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    .line 39
    :cond_0
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->setDebugMode(Z)V

    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$1;-><init>(Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 33
    iget-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "vcsdk_debug_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->setDebugMode()V

    return-void
.end method
