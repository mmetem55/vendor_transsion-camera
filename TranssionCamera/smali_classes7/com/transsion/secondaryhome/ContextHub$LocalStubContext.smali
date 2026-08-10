.class public Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;
.super Landroid/content/ContextWrapper;
.source "ContextHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/secondaryhome/ContextHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalStubContext"
.end annotation


# instance fields
.field private mRemoteContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 217
    iput-object p2, p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;->mRemoteContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRemoteContext()Landroid/content/Context;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/transsion/secondaryhome/ContextHub$LocalStubContext;->mRemoteContext:Landroid/content/Context;

    return-object p0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 2

    .line 226
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalStubContext unbindService err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextHub"

    invoke-static {v0, p1, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
