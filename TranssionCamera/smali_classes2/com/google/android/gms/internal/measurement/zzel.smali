.class public final Lcom/google/android/gms/internal/measurement/zzel;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzel;",
        "Lcom/google/android/gms/internal/measurement/zzek;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzel;


# instance fields
.field private zza:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzex;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzeq;

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzel;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Lcom/google/android/gms/internal/measurement/zzel;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzel;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzel;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Lcom/google/android/gms/internal/measurement/zzel;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzel;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Lcom/google/android/gms/internal/measurement/zzel;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzel;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzex;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:Lcom/google/android/gms/internal/measurement/zzex;

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzex;->zzi()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzeq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzf:Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->zzk()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzg:Z

    return p0
.end method

.method public final zzg()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zza:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x5

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x0

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Lcom/google/android/gms/internal/measurement/zzel;

    return-object p0

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzek;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzek;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzel;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v2, "zza"

    aput-object v2, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p0

    const-string p0, "zzf"

    aput-object p0, p1, v1

    const-string p0, "zzg"

    aput-object p0, p1, v0

    const-string p0, "zzh"

    aput-object p0, p1, p3

    .line 0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Lcom/google/android/gms/internal/measurement/zzel;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

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
