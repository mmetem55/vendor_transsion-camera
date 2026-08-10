.class Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink$1;
.super Ljava/lang/Object;
.source "SecondaryHomeLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;


# direct methods
.method constructor <init>(Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink$1;->this$0:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink$1;->this$0:Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;

    invoke-static {p0}, Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;->access$000(Lcom/transsion/secondaryhome/traffic/client/SecondaryHomeLink;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenBusConnected(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "SecondaryHomeLink"

    if-nez p0, :cond_0

    const-string p0, "initRunnable OxygenBus failed !"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "initRunnable OxyGenBus init OxygenBus done "

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
