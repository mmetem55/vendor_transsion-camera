.class public abstract Lathena/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Landroid/os/Handler;

.field private c:Lathena/i0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lathena/x;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lathena/x;->a:I

    return-void
.end method

.method a(Landroid/os/Handler;Lathena/i0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lathena/x;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lathena/x;->c:Lathena/i0;

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lathena/x;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lathena/x;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lathena/x;

    iget p1, p1, Lathena/x;->a:I

    .line 3
    iget p0, p0, Lathena/x;->a:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lathena/x;->c:Lathena/i0;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lathena/c0;

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lathena/x;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lathena/x;->c:Lathena/i0;

    if-eqz v0, :cond_1

    .line 9
    check-cast v0, Lathena/c0;

    invoke-virtual {v0, p0}, Lathena/c0;->b(Lathena/x;)V

    :cond_1
    return-void
.end method
