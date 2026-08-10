.class Lathena/k$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/athena/data/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/k;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/athena/data/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "v"

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/transsion/ga/d;

    const-string v0, "cleanupEvents_oom"

    invoke-direct {p1, v0, p0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    return-void
.end method
