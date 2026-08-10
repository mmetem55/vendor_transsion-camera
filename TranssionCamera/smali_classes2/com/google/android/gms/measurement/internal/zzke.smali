.class abstract Lcom/google/android/gms/measurement/internal/zzke;
.super Lcom/google/android/gms/measurement/internal/zzkd;
.source "com.google.android.gms:play-services-measurement@@19.0.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzL()V

    return-void
.end method


# virtual methods
.method final zzY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final zzZ()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzY()Z

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

.method protected abstract zzaA()Z
.end method

.method public final zzaa()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaA()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzM()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
