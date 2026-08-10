.class public final Lcom/google/android/gms/internal/measurement/zzgm;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzgm;",
        "Lcom/google/android/gms/internal/measurement/zzgl;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzgm;


# instance fields
.field private zza:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzgt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzgm;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzgm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzgm;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgt;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object p0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzgm;

    return-object p0

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>(Lcom/google/android/gms/internal/measurement/zzgi;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zza"

    aput-object v1, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p0

    const-string p0, "zzf"

    aput-object p0, p1, v0

    .line 0
    const-class p0, Lcom/google/android/gms/internal/measurement/zzgt;

    aput-object p0, p1, p3

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzg:Lcom/google/android/gms/internal/measurement/zzgm;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

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
