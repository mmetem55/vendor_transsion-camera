.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;


# instance fields
.field public z1OoOdo:Ljava/lang/Object;

.field public z1OoOif:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOdo:Ljava/lang/Object;

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOif:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public z1OoOdo()V
    .locals 5

    const-string v0, "BounceEffect"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTranBounceAnimation called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOif:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOif:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "cancelTranBounceAnimation"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOdo:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTranBounceAnimation not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;->z1OoOif:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    return-void
.end method
