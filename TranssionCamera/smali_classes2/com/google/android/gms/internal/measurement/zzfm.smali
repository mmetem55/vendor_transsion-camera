.class public final Lcom/google/android/gms/internal/measurement/zzfm;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzfm;",
        "Lcom/google/android/gms/internal/measurement/zzfl;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzfm;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfm;->zzg:Lcom/google/android/gms/internal/measurement/zzfm;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfm;->zzg:Lcom/google/android/gms/internal/measurement/zzfm;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfm;->zzg:Lcom/google/android/gms/internal/measurement/zzfm;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzfm;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zze:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzfm;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzf:J

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zze:I

    return p0
.end method

.method public final zzc()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzf:J

    return-wide v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    if-eq p1, p2, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzg:Lcom/google/android/gms/internal/measurement/zzfm;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfl;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p0

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfm;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p0

    const-string p0, "zzf"

    aput-object p0, p1, p3

    .line 0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfm;->zzg:Lcom/google/android/gms/internal/measurement/zzfm;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

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
