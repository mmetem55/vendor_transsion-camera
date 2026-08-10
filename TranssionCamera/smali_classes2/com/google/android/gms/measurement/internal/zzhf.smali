.class final Lcom/google/android/gms/measurement/internal/zzhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhw;->zzG(JZ)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzv(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
