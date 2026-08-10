.class public Lcom/transsion/athena/data/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:I

.field private static b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/athena/data/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/data/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/athena/data/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(J)Z
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/athena/data/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0, p1}, Lathena/k0;->a(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b()I
    .locals 1

    .line 5
    sget v0, Lcom/transsion/athena/data/c;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/athena/data/c;->a:I

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "The host appId has been set 2 times"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 4
    :cond_0
    sput p0, Lcom/transsion/athena/data/c;->a:I

    return-void
.end method
