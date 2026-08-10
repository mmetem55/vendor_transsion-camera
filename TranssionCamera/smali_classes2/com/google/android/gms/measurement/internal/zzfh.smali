.class final synthetic Lcom/google/android/gms/measurement/internal/zzfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzt;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzb:Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>(Lcom/google/android/gms/internal/measurement/zzr;)V

    return-object v0
.end method
