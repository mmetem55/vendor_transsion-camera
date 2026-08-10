.class final Lcom/google/android/gms/internal/measurement/zzdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.0"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final zza:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zza:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zza:Ljava/util/concurrent/ThreadFactory;

    .line 1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const-string p1, "ScionFrontendApi"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p0
.end method
