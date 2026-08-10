.class final Lcom/google/android/gms/measurement/internal/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbr;

.field final synthetic zzb:Landroid/content/ServiceConnection;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/internal/measurement/zzbr;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfd;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfd;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfd;->zza:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(Lcom/google/android/gms/measurement/internal/zzfd;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Landroid/content/ServiceConnection;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    new-instance v3, Landroid/os/Bundle;

    .line 2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package_name"

    .line 3
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Install Referrer Service returned a null response"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 18
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v3, 0x0

    .line 10
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-nez v2, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "install_referrer"

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_2

    .line 16
    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "InstallReferrer API result"

    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 36
    :cond_4
    new-instance v2, Ljava/lang/String;

    .line 18
    invoke-direct {v2, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzi(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "No campaign params defined in Install Referrer result"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v9, "medium"

    .line 20
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v10, "(not set)"

    .line 21
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "organic"

    .line 22
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "referrer_click_timestamp_seconds"

    .line 23
    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    mul-long/2addr v9, v7

    cmp-long v0, v9, v3

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 26
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "click_timestamp"

    .line 27
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfb;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v3

    cmp-long v0, v5, v3

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Install Referrer campaign has already been logged"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfb;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Logging Install Referrer campaign from sdk with "

    const-string v4, "referrer API"

    .line 33
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_cis"

    .line 34
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzk()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v0

    const-string v3, "auto"

    const-string v4, "_cmp"

    .line 36
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzhw;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 15
    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "No referrer defined in Install Referrer response"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 38
    :cond_a
    :goto_3
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
