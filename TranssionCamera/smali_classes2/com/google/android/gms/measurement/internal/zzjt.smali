.class final synthetic Lcom/google/android/gms/measurement/internal/zzjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzjv;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:J

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:J

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p0

    const-string v3, "Application going to the background"

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p0

    .line 5
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzar:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd()Lcom/google/android/gms/measurement/internal/zzfb;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfb;->zzl:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzb(Z)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 8
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzt()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 11
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb(J)V

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzaj:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 13
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-wide v8, v6, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    iput-wide v1, v6, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    sub-long v8, v1, v8

    const-string v6, "_et"

    .line 14
    invoke-virtual {p0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v6

    .line 16
    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzik;->zzh(Z)Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v6

    .line 17
    invoke-static {v6, p0, v3}, Lcom/google/android/gms/measurement/internal/zzik;->zzm(Lcom/google/android/gms/measurement/internal/zzid;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 18
    invoke-virtual {v6, v7, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzd(ZZJ)Z

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzk()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ab"

    move-object v6, p0

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzt(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
