.class public Lcom/transsion/camera/app/common/provider/PhotoOemApi;
.super Ljava/lang/Object;
.source "PhotoOemApi.java"


# direct methods
.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider_authority"

    const-string v3, "string"

    .line 90
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 2

    .line 80
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1

    .line 67
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "processing"

    .line 68
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
