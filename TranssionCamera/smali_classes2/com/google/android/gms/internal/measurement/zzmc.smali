.class final Lcom/google/android/gms/internal/measurement/zzmc;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzmd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmd;Lcom/google/android/gms/internal/measurement/zzlw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmc;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmb;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;Lcom/google/android/gms/internal/measurement/zzlw;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmc;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmd;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->size()I

    move-result p0

    return p0
.end method
