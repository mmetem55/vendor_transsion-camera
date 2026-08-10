.class public Lathena/b0;
.super Lathena/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lathena/x<",
        "Lathena/d0<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lathena/x;-><init>()V

    .line 2
    iput-object p1, p0, Lathena/b0;->d:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lathena/b0;->e:J

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, Lathena/x;->a(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "GlobalConfig"

    return-object p0
.end method

.method public c()Lathena/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lathena/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lathena/b0;->d:Ljava/lang/String;

    iget-wide v1, p0, Lathena/b0;->e:J

    const-string p0, ""

    invoke-static {v0, p0, v1, v2}, Lathena/y;->a(Ljava/lang/String;Ljava/lang/String;J)Lathena/d0;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lathena/b0;

    return p0
.end method
