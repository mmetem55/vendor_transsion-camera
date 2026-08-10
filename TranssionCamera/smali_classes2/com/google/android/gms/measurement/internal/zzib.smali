.class final Lcom/google/android/gms/measurement/internal/zzib;
.super Lcom/google/android/gms/measurement/internal/zzke;
.source "com.google.android.gms:play-services-measurement@@19.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    return-void
.end method

.method static final zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final zzaA()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
