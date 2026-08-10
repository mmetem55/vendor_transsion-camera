.class Lcom/transsion/ga/AthenaAnalytics$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics$d;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ga/AthenaAnalytics$d;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->w()Z

    move-result v0

    const-wide/32 v1, 0xea60

    const-string v3, "]"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Athena is in Test mode\uff0cshould not release this APK\uff08\u6d4b\u8bd5\u6a21\u5f0f\uff09["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lathena/k0;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK \uff08Debug\u6a21\u5f0f\uff09["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lathena/k0;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
