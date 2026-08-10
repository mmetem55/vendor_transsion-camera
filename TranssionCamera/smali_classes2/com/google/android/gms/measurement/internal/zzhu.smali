.class final Lcom/google/android/gms/measurement/internal/zzhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Landroid/net/Uri;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhv;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zze:Lcom/google/android/gms/measurement/internal/zzhv;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zze:Lcom/google/android/gms/measurement/internal/zzhv;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzc:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzd:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzab:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Activity created with data \'referrer\' without required params"

    const-string v8, "_cis"

    const-string v9, "utm_medium"

    const-string v10, "utm_source"

    const-string v11, "utm_campaign"

    const-string v12, "gclid"

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzad:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 5
    invoke-virtual {v4, v6, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzac:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 7
    invoke-virtual {v4, v6, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v4

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    :goto_0
    move-object v4, v6

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 11
    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 12
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 13
    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v13, "https://google.com/search?"

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 17
    :cond_4
    new-instance v14, Ljava/lang/String;

    .line 14
    invoke-direct {v14, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    .line 15
    :goto_1
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 16
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzku;->zzi(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v13, "referrer"

    .line 17
    invoke-virtual {v4, v8, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    const-string v13, "_cmp"

    const/4 v14, 0x1

    if-eqz v1, :cond_7

    .line 9
    :try_start_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzi(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "intent"

    .line 22
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    const-string v5, "_cer"

    const-string v8, "gclid=%s"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 29
    invoke-virtual {v2, v3, v13, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 30
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    move-object v1, v6

    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzad:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 32
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "auto"

    if-eqz v2, :cond_a

    :try_start_3
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzac:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 34
    invoke-virtual {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v4, :cond_a

    .line 35
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    const-string v2, "_lgclid"

    .line 37
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-virtual {v1, v5, v2, v8, v14}, Lcom/google/android/gms/measurement/internal/zzhw;->zzy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 39
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Activity created with referrer"

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzac:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 43
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "_ldl"

    if-eqz v1, :cond_d

    if-eqz v4, :cond_c

    :try_start_4
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 44
    invoke-virtual {p0, v3, v13, v4}, Lcom/google/android/gms/measurement/internal/zzhw;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhw;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 45
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 48
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v3, "Referrer does not contain valid parameters"

    invoke-virtual {v1, v3, p0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :goto_4
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 48
    invoke-virtual {p0, v5, v2, v6, v14}, Lcom/google/android/gms/measurement/internal/zzhw;->zzy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 49
    :cond_d
    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 50
    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 51
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 52
    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "utm_term"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "utm_content"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 57
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 58
    invoke-virtual {v1, v5, v2, p0, v14}, Lcom/google/android/gms/measurement/internal/zzhw;->zzy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_f
    :goto_5
    return-void

    :cond_10
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
