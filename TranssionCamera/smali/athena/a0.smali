.class public Lathena/a0;
.super Lathena/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lathena/x<",
        "Lathena/d0<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "https://time1.google.com"

    const-string v1, "https://time.cloudflare.com"

    const-string v2, "https://www.pool.ntp.org"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lathena/a0;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lathena/x;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lathena/a0;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lathena/x;->b:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    :goto_0
    iget v1, p0, Lathena/a0;->e:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v2, Lathena/a0;->d:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lathena/y;->b(Ljava/lang/String;)Lathena/d0;

    move-result-object v1

    .line 5
    iget v2, v1, Lathena/d0;->a:I

    if-nez v2, :cond_0

    .line 6
    iget-object v1, v1, Lathena/d0;->b:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    iget v1, p0, Lathena/a0;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lathena/a0;->e:I

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object p0, p0, Lathena/x;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "BaseTime"

    return-object p0
.end method
