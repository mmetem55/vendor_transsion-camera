.class public final Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOnew;,
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;,
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;,
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOfor;
    }
.end annotation


# static fields
.field public static final z1OoOcase:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public z1OoObyte:Z

.field public final z1OoOdo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOfor;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;

.field public final z1OoOif:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOfor;",
            ">;"
        }
    .end annotation
.end field

.field public final z1OoOint:Ljava/lang/Runnable;

.field public z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;

.field public z1OoOtry:J


# direct methods
.method public static synthetic $r8$lambda$gxm7tRXaG_p9p4cJcY7FmF1GJOo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;)V
    .locals 0

    invoke-direct {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOcase:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOdo;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;

    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$$ExternalSyntheticLambda0;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;)V

    iput-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOtry:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoObyte:Z

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;

    return-void
.end method

.method private z1OoOdo()V
    .locals 11

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOfor:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;

    .line 1
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOtry:J

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;

    iget-wide v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOtry:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOfor;

    if-nez v7, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v9, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-gez v9, :cond_2

    iget-object v9, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    if-eqz v8, :cond_3

    .line 4
    invoke-interface {v7, v1, v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOfor;->doAnimationFrame(J)Z

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5
    :cond_4
    iget-boolean v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoObyte:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_3
    if-ltz v1, :cond_6

    iget-object v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    iput-boolean v5, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoObyte:Z

    .line 6
    :cond_7
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOif;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;

    .line 7
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;

    .line 8
    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    .line 9
    invoke-interface {v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOdo$z1OoOtry;->z1OoOdo(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
