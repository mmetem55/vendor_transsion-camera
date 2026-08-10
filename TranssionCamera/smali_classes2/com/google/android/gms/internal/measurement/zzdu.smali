.class final Lcom/google/android/gms/internal/measurement/zzdu;
.super Lcom/google/android/gms/internal/measurement/zzch;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzch;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/measurement/internal/zzgu;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/measurement/internal/zzgu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgu;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zze()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
