.class Lcom/transsion/sdk/oneid/b;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/transsion/sdk/oneid/b;->a:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/transsion/sdk/oneid/b;->a:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/transsion/sdk/oneid/b;->a:Z

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sdk/oneid/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
