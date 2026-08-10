.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjp;


# instance fields
.field private zza:Lcom/google/android/gms/measurement/internal/zzjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzjq<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final zzd()Lcom/google/android/gms/measurement/internal/zzjq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzjq<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjq;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zze(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzh(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Landroid/content/Intent;II)I

    const/4 p0, 0x2

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzd()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzf(Landroid/content/Intent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final zza(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p0

    return p0
.end method

.method public final zzb(Landroid/app/job/JobParameters;Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzc(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
