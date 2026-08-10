.class public final Lcom/google/android/gms/internal/measurement/zzfn;
.super Lcom/google/android/gms/internal/measurement/zzjz;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjz<",
        "Lcom/google/android/gms/internal/measurement/zzfo;",
        "Lcom/google/android/gms/internal/measurement/zzfn;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzm()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzff;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zzm()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/util/List;

    move-result-object p0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzb()I

    move-result p0

    return p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo;->zzn(Lcom/google/android/gms/internal/measurement/zzfo;ILcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0
.end method

.method public final zze(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo;->zzn(Lcom/google/android/gms/internal/measurement/zzfo;ILcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzo(Lcom/google/android/gms/internal/measurement/zzfo;Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzo(Lcom/google/android/gms/internal/measurement/zzfo;Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfs;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzfn;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzp(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzq(Lcom/google/android/gms/internal/measurement/zzfo;)V

    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzr(Lcom/google/android/gms/internal/measurement/zzfo;I)V

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzs(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzm()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zze()Z

    move-result p0

    return p0
.end method

.method public final zzn()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(J)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo;->zzt(Lcom/google/android/gms/internal/measurement/zzfo;J)V

    return-object p0
.end method

.method public final zzp()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjz;->zza:Lcom/google/android/gms/internal/measurement/zzkd;

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq(J)Lcom/google/android/gms/internal/measurement/zzfn;
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
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo;->zzu(Lcom/google/android/gms/internal/measurement/zzfo;J)V

    return-object p0
.end method
