.class Lcom/transsion/sdk/oneid/c$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sdk/oneid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/sdk/oneid/c;


# direct methods
.method constructor <init>(Lcom/transsion/sdk/oneid/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/c$a;->a:Lcom/transsion/sdk/oneid/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplyMessenger msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/sdk/oneid/c$a;->a:Lcom/transsion/sdk/oneid/c;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/c;->a(Lcom/transsion/sdk/oneid/c;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transsion/sdk/oneid/c$a;->a:Lcom/transsion/sdk/oneid/c;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/c;->a(Lcom/transsion/sdk/oneid/c;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/transsion/sdk/oneid/c$a;->a:Lcom/transsion/sdk/oneid/c;

    invoke-static {p0}, Lcom/transsion/sdk/oneid/c;->b(Lcom/transsion/sdk/oneid/c;)V

    return-void
.end method
