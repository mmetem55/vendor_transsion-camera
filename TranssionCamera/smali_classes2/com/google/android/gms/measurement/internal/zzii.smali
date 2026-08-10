.class final Lcom/google/android/gms/measurement/internal/zzii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzid;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzb:J

    const/4 v4, 0x0

    .line 1
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzik;->zzy(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;ZJ)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzc:Lcom/google/android/gms/measurement/internal/zzik;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzz(Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void
.end method
