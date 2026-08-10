.class Lathena/d;
.super Lathena/z;
.source "source.java"


# instance fields
.field final synthetic g:Lcom/transsion/athena/config/data/model/a;

.field final synthetic h:I

.field final synthetic i:J

.field final synthetic j:Lathena/c;

.field final synthetic k:Lathena/g;


# direct methods
.method constructor <init>(Lathena/g;ILjava/lang/String;JLcom/transsion/athena/config/data/model/a;IJLathena/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/d;->k:Lathena/g;

    iput-object p6, p0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    iput p7, p0, Lathena/d;->h:I

    iput-wide p8, p0, Lathena/d;->i:J

    iput-object p10, p0, Lathena/d;->j:Lathena/c;

    invoke-direct {p0, p2, p3, p4, p5}, Lathena/z;-><init>(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-super {p0}, Lathena/z;->c()Lathena/d0;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lathena/x;->b:Landroid/os/Handler;

    new-instance v2, Lathena/d$a;

    invoke-direct {v2, p0, v0}, Lathena/d$a;-><init>(Lathena/d;Lathena/d0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-object v0
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
    invoke-super {p0}, Lathena/z;->c()Lathena/d0;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lathena/x;->b:Landroid/os/Handler;

    new-instance v2, Lathena/d$a;

    invoke-direct {v2, p0, v0}, Lathena/d$a;-><init>(Lathena/d;Lathena/d0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-object v0
.end method
