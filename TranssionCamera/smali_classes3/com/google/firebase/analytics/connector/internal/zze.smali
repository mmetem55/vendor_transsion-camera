.class public final Lcom/google/firebase/analytics/connector/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.0"

# interfaces
.implements Lcom/google/firebase/analytics/connector/internal/zza;


# instance fields
.field final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

.field private final zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private final zzd:Lcom/google/firebase/analytics/connector/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzc:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/zzd;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/zzd;-><init>(Lcom/google/firebase/analytics/connector/internal/zze;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzd:Lcom/google/firebase/analytics/connector/internal/zzd;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    return-void
.end method

.method static synthetic zzd(Lcom/google/firebase/analytics/connector/internal/zze;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zzb:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    return-object p0
.end method

.method public final zzb(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/zze;->zza:Ljava/util/Set;

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
