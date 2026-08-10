.class public final Lcom/google/android/gms/internal/measurement/zzfb;
.super Lcom/google/android/gms/internal/measurement/zzjz;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "Lcom/google/android/gms/internal/measurement/zzfc;",
        "Lcom/google/android/gms/internal/measurement/zzfb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zzo()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzey;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc;->zzo()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfc;->zzf()I

    move-result p0

    return p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzfa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zzg(I)Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzez;)Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfa;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfc;->zzp(Lcom/google/android/gms/internal/measurement/zzfc;ILcom/google/android/gms/internal/measurement/zzfa;)V

    return-object p0
.end method

.method public final zzd()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzeh;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfc;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfc;->zzh()Ljava/util/List;

    move-result-object p0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfc;->zzq(Lcom/google/android/gms/internal/measurement/zzfc;)V

    return-object p0
.end method
