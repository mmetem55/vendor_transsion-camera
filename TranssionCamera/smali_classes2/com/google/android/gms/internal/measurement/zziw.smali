.class final Lcom/google/android/gms/internal/measurement/zziw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/measurement/zzjd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjd;

    new-instance p0, Lcom/google/android/gms/internal/measurement/zziv;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziv;-><init>(Lcom/google/android/gms/internal/measurement/zzjd;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziv;

    .line 3
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/measurement/zziv;-><init>(Lcom/google/android/gms/internal/measurement/zzjd;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zziz;->zza()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzc()I

    move-result p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzc()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1
.end method
