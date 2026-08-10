.class public final Lcom/google/android/gms/internal/measurement/zzfu;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzfu;",
        "Lcom/google/android/gms/internal/measurement/zzft;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/measurement/zzfu;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzfw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfu;->zze:Lcom/google/android/gms/internal/measurement/zzfu;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzft;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfu;->zze:Lcom/google/android/gms/internal/measurement/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfu;->zze:Lcom/google/android/gms/internal/measurement/zzfu;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzfu;Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfw;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzfw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfw;

    return-object p0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfu;->zze:Lcom/google/android/gms/internal/measurement/zzfu;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzft;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzft;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p0

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zza"

    aput-object p3, p1, p2

    .line 0
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfw;

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfu;->zze:Lcom/google/android/gms/internal/measurement/zzfu;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbz(Lcom/google/android/gms/internal/measurement/zzli;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
