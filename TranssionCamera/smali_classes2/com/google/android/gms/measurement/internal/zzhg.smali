.class final Lcom/google/android/gms/measurement/internal/zzhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "app_id"

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhg;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "origin"

    .line 5
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "value"

    .line 8
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v6, "triggered_timestamp"

    .line 13
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 14
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v15

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v6

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "triggered_event_name"

    .line 17
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "triggered_event_params"

    .line 18
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v3

    .line 19
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v17

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v6

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "timed_out_event_name"

    .line 22
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "timed_out_event_params"

    .line 23
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v3

    .line 24
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v6

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "expired_event_name"

    .line 27
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "expired_event_params"

    .line 28
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v3

    .line 29
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "creation_timestamp"

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const-string v1, "trigger_event_name"

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "trigger_timeout"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v1, "time_to_live"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-object v6, v5

    move-object v8, v3

    move-object v9, v15

    move-object v14, v4

    move-wide/from16 v15, v18

    move-wide/from16 v18, v0

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkq;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjk;->zzm(Lcom/google/android/gms/measurement/internal/zzaa;)V

    :catch_0
    return-void
.end method
