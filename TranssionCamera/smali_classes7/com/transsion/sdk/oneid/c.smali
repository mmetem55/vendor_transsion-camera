.class public Lcom/transsion/sdk/oneid/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler$Callback;

.field private c:Landroid/os/Messenger;

.field private final d:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/transsion/sdk/oneid/c$a;

    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/c$a;-><init>(Lcom/transsion/sdk/oneid/c;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/c;->d:Landroid/os/Messenger;

    .line 15
    iput-object p1, p0, Lcom/transsion/sdk/oneid/c;->a:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/transsion/sdk/oneid/c;->b:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic a(Lcom/transsion/sdk/oneid/c;)Landroid/os/Handler$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/sdk/oneid/c;->b:Landroid/os/Handler$Callback;

    return-object p0
.end method

.method static b(Lcom/transsion/sdk/oneid/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/c;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/sdk/oneid/c;->c:Landroid/os/Messenger;

    .line 55
    iget-object v0, p0, Lcom/transsion/sdk/oneid/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hoffnung"

    const-string v2, "com.transsion.dataservice.binder.DCService"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/transsion/sdk/oneid/c;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/16 v0, 0x64

    .line 3
    :try_start_0
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    const-string v2, "oneid"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    iget-object v0, p0, Lcom/transsion/sdk/oneid/c;->d:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 9
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/c;->c:Landroid/os/Messenger;

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "onServiceDisconnected"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void
.end method
