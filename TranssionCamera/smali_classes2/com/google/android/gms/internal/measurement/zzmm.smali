.class public final Lcom/google/android/gms/internal/measurement/zzmm;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/zzks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/measurement/zzks;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzmm;)Lcom/google/android/gms/internal/measurement/zzks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkr;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkr;->zzd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzml;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzml;-><init>(Lcom/google/android/gms/internal/measurement/zzmm;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmk;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmk;-><init>(Lcom/google/android/gms/internal/measurement/zzmm;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzg(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzks;->zzg(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzks;->zzh()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/measurement/zzks;
    .locals 0

    return-object p0
.end method
