.class final Lcom/google/android/gms/measurement/internal/zzij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzik;->zzz(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;)Lcom/google/android/gms/measurement/internal/zzid;

    return-void
.end method
