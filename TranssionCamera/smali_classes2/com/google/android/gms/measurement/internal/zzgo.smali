.class abstract Lcom/google/android/gms/measurement/internal/zzgo;
.super Lcom/google/android/gms/measurement/internal/zzgn;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgn;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzJ()V

    return-void
.end method


# virtual methods
.method protected abstract zza()Z
.end method

.method protected zzaz()V
    .locals 0

    return-void
.end method

.method final zzu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final zzv()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzx()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzK()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Z

    :cond_0
    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzy()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzaz()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzK()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Z

    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
