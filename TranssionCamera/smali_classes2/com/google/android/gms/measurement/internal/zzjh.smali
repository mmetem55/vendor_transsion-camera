.class final Lcom/google/android/gms/measurement/internal/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjj;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjj;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    const-string p0, "com.google.android.gms.measurement.AppMeasurementService"

    .line 3
    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->zzJ(Lcom/google/android/gms/measurement/internal/zzjk;Landroid/content/ComponentName;)V

    return-void
.end method
