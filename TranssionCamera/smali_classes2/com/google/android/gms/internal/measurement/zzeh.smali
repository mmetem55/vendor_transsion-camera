.class public final Lcom/google/android/gms/internal/measurement/zzeh;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzeh;",
        "Lcom/google/android/gms/internal/measurement/zzeg;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzeh;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzes;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzej;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeh;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzeh;->zzj:Lcom/google/android/gms/internal/measurement/zzeh;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzeh;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeh;->zzj:Lcom/google/android/gms/internal/measurement/zzeh;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzeh;ILcom/google/android/gms/internal/measurement/zzes;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzeh;ILcom/google/android/gms/internal/measurement/zzej;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 4
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zza:I

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

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zze:I

    return p0
.end method

.method public final zzc()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzes;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object p0
.end method

.method public final zzd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzes;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzf:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzes;

    return-object p0
.end method

.method public final zzf()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzej;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object p0
.end method

.method public final zzg()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/measurement/zzej;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzg:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzej;

    return-object p0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzj:Lcom/google/android/gms/internal/measurement/zzeh;

    return-object p0

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzeh;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzeh;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "zza"

    aput-object v3, p1, v2

    const-string v2, "zze"

    aput-object v2, p1, p0

    const-string p0, "zzf"

    aput-object p0, p1, v1

    .line 0
    const-class p0, Lcom/google/android/gms/internal/measurement/zzes;

    aput-object p0, p1, v0

    const-string p0, "zzg"

    aput-object p0, p1, p3

    const-class p0, Lcom/google/android/gms/internal/measurement/zzej;

    aput-object p0, p1, p2

    const/4 p0, 0x6

    const-string p2, "zzh"

    aput-object p2, p1, p0

    const/4 p0, 0x7

    const-string p2, "zzi"

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzeh;->zzj:Lcom/google/android/gms/internal/measurement/zzeh;

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

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
