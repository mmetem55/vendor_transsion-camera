.class final Lcom/google/android/gms/internal/measurement/zzij;
.super Lcom/google/android/gms/internal/measurement/zzig;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzii;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzig;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzii;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzii;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    if-eq p2, p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Self suppression is not allowed."

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
