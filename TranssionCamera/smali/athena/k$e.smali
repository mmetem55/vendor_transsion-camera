.class Lathena/k$e;
.super Lathena/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lathena/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lathena/k;


# direct methods
.method constructor <init>(Lathena/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/k$e;->a:Lathena/k;

    invoke-direct {p0}, Lathena/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p0, p0, Lathena/k$e;->a:Lathena/k;

    invoke-static {p0, p1, p2}, Lathena/k;->a(Lathena/k;IZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lathena/k$e;->a:Lathena/k;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
