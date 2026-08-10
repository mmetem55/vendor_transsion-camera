.class public final Lcom/google/android/gms/measurement/internal/zzes;
.super Lcom/google/android/gms/measurement/internal/zzke;
.source "com.google.android.gms:play-services-measurement@@19.0.0"


# instance fields
.field private final zza:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method protected final zzaA()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected final zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zza:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 7
    :cond_0
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const v1, 0xea60

    .line 10
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const p0, 0xee48

    .line 12
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 13
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    .line 14
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 2
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to obtain HTTP connection"

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
