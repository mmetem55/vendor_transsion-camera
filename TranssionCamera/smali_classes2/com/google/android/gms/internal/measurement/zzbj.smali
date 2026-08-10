.class public final Lcom/google/android/gms/internal/measurement/zzbj;
.super Lcom/google/android/gms/internal/measurement/zzaw;
.source "com.google.android.gms:play-services-measurement@@19.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzg;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzap;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzap;"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p0

    const-string p0, "Function %s is not defined"

    .line 6
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p0

    const-string p0, "Command not found: %s"

    .line 2
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
