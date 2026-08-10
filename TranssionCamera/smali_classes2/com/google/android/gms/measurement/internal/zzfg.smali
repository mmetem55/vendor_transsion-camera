.class final synthetic Lcom/google/android/gms/measurement/internal/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfl;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfg;->zzb:Ljava/lang/String;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzn;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)V

    const-string p0, "internal.remoteConfig"

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzo;)V

    return-object v1
.end method
