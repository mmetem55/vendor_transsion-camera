.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1    # Landroid/content/ContextWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public asActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public asFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public asObject()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method public isChimera()Z
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport()Z
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    return p0
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    instance-of p0, p0, Landroid/app/Activity;

    return p0
.end method
