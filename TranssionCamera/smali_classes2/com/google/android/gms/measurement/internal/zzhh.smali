.class final Lcom/google/android/gms/measurement/internal/zzhh;
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

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "creation_timestamp"

    const-string v2, "origin"

    const-string v3, "app_id"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 4
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzax:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 9
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 11
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v22, v6

    .line 9
    :try_start_0
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v6

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "expired_event_name"

    .line 14
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "expired_event_params"

    .line 15
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 18
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v33
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 20
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    const-string v1, "active"

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    const-string v1, "trigger_event_name"

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const-string v1, "trigger_timeout"

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    const/16 v30, 0x0

    const-string v1, "time_to_live"

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v33}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkq;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjk;->zzm(Lcom/google/android/gms/measurement/internal/zzaa;)V

    :catch_0
    return-void

    .line 11
    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Conditional property not cleared since app measurement is disabled"

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return-void
.end method
