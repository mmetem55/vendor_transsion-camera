.class public abstract Lcom/google/android/gms/internal/measurement/zzcb;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "com.google.android.gms:play-services-measurement-base@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcc;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzcc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzcc;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzca;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzca;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v3, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 196
    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_13

    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 6
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_13

    .line 7
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 8
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcc;->clearMeasurementEnabled(J)V

    goto/16 :goto_13

    :pswitch_4
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 10
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_13

    .line 11
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 13
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1

    .line 14
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 15
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_0
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 17
    :pswitch_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 18
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->setDataCollectionEnabled(Z)V

    goto/16 :goto_13

    .line 19
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 21
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_3

    .line 22
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 23
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 25
    invoke-interface {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzcf;I)V

    goto/16 :goto_13

    .line 26
    :pswitch_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzf(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v1

    .line 27
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_13

    .line 28
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 30
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_5

    .line 31
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcg;

    .line 32
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 33
    :goto_2
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_13

    .line 34
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 35
    :cond_6
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 36
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_7

    .line 37
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcg;

    .line 38
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_3
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_13

    .line 40
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 41
    :cond_8
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 42
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzci;

    if-eqz v3, :cond_9

    .line 43
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzci;

    goto :goto_4

    :cond_9
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcg;

    .line 44
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_4
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzci;)V

    goto/16 :goto_13

    .line 46
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcc;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_13

    :pswitch_d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_5

    .line 54
    :cond_a
    invoke-interface {v5, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 55
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_b

    .line 56
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_5

    :cond_b
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 57
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 58
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 59
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_13

    .line 60
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_6

    .line 62
    :cond_c
    invoke-interface {v5, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 63
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_d

    .line 64
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_6

    :cond_d
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 65
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 67
    invoke-interface {p0, v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto/16 :goto_13

    .line 68
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 70
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_13

    .line 71
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 73
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_13

    .line 74
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 76
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_13

    .line 77
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 80
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_13

    .line 81
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 83
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_13

    .line 84
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 86
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_13

    .line 87
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 89
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_13

    .line 90
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 92
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_13

    .line 93
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_7

    .line 94
    :cond_e
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 95
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_f

    .line 96
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_7

    :cond_f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 97
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 98
    :goto_7
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->generateEventId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 99
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_8

    .line 100
    :cond_10
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 101
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_11

    .line 102
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_8

    :cond_11
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 103
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 104
    :goto_8
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 105
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 106
    :cond_12
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 107
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_13

    .line 108
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_9

    :cond_13
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 109
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 110
    :goto_9
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 111
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_a

    .line 112
    :cond_14
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 113
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_15

    .line 114
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_a

    :cond_15
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 115
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 116
    :goto_a
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 117
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_b

    :cond_16
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 118
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 119
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzck;

    if-eqz v3, :cond_17

    .line 120
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzck;

    goto :goto_b

    :cond_17
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 121
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Landroid/os/IBinder;)V

    .line 122
    :goto_b
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzck;)V

    goto/16 :goto_13

    .line 123
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_c

    .line 124
    :cond_18
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 125
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_19

    .line 126
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_c

    :cond_19
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 127
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 128
    :goto_c
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 129
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_d

    .line 130
    :cond_1a
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 131
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v3, :cond_1b

    .line 132
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_d

    :cond_1b
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 133
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 134
    :goto_d
    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 135
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    .line 139
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzcc;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_13

    .line 140
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 141
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcc;->setSessionTimeoutDuration(J)V

    goto/16 :goto_13

    .line 142
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 143
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcc;->setMinimumSessionDuration(J)V

    goto/16 :goto_13

    .line 144
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 145
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcc;->resetAnalyticsData(J)V

    goto/16 :goto_13

    .line 146
    :pswitch_22
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v2

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 148
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_13

    .line 149
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_e

    .line 152
    :cond_1c
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 153
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_1d

    .line 154
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_e

    :cond_1d
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 155
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 156
    :goto_e
    invoke-interface {p0, v2, v5, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 157
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 160
    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_13

    :pswitch_25
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 163
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_13

    .line 164
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 166
    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_13

    .line 167
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_f

    .line 169
    :cond_1e
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 170
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_1f

    .line 171
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_f

    :cond_1f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 172
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 173
    :goto_f
    invoke-interface {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 174
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_10

    .line 178
    :cond_20
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 179
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_21

    .line 180
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_10

    :cond_21
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 181
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 182
    :goto_10
    invoke-interface {p0, v2, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    goto/16 :goto_13

    .line 183
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-wide v5, v6

    .line 188
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcc;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_13

    .line 189
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    invoke-static {p2, v6}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_22

    goto :goto_12

    .line 193
    :cond_22
    invoke-interface {v7, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 194
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzcf;

    if-eqz v4, :cond_23

    .line 195
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcf;

    goto :goto_11

    :cond_23
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 196
    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>(Landroid/os/IBinder;)V

    :goto_11
    move-object v4, v3

    .line 197
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v6

    move-wide v5, v7

    .line 198
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzcc;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcf;J)V

    goto :goto_13

    .line 199
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 203
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;)Z

    move-result v6

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v7

    .line 205
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzcc;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_13

    .line 206
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 207
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzcl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcl;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 209
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcc;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzcl;J)V

    .line 210
    :goto_13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
