.class public Lcom/transsion/sdk/oneid/data/PackageInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public drm:Ljava/lang/String;

.field public ins:Ljava/lang/String;

.field public ins_f:Ljava/lang/String;

.field public ins_u:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public sdkv:Ljava/lang/String;

.field public signatures:Ljava/lang/String;

.field public ssaid:Ljava/lang/String;

.field public vc:Ljava/lang/String;

.field public vn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->vn:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->vc:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins_f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins_u:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->drm:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    const-string v1, "1.0.0.6"

    .line 16
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->sdkv:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 26
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins:Ljava/lang/String;

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 30
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->vn:Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->vc:Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins_f:Ljava/lang/String;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ins_u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v2, "SHA-256"

    .line 38
    invoke-static {p1, v2}, Lcom/transsion/sdk/oneid/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    .line 41
    :try_start_1
    new-instance v3, Landroid/media/MediaDrm;

    new-instance v4, Ljava/util/UUID;

    const-wide v5, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v7, -0x5c37d8232ae2de13L

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v3, v4}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    const-string v4, "deviceUniqueId"

    .line 43
    invoke-virtual {v3, v4}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 45
    invoke-virtual {v3}, Landroid/media/MediaDrm;->close()V

    .line 49
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->drm:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->drm:Ljava/lang/String;

    .line 64
    :catch_2
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 69
    :catch_3
    iget-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 70
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    :cond_3
    return-void
.end method
