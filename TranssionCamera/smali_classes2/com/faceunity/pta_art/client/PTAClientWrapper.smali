.class public abstract Lcom/faceunity/pta_art/client/PTAClientWrapper;
.super Ljava/lang/Object;
.source "PTAClientWrapper.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PTAClientWrapper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static deformAvatarHead(Ljava/io/InputStream;Ljava/lang/String;[F)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deformAvatarHead values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 71
    aget v1, p2, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 72
    :cond_0
    sget-object v1, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deformAvatarHead error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    aput v2, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-static {v0, p2}, Lcom/faceunity/pta_art/constant/FUPTAClient;->deformAvatarHeadWithHeadData([B[F)[B

    move-result-object p0

    .line 80
    invoke-static {p1, p0}, Lcom/faceunity/pta_art/utils/FileUtil;->saveDataToFile(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public static deformHairByHead([BLjava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 63
    invoke-static {p0, v0}, Lcom/faceunity/pta_art/constant/FUPTAClient;->createAvatarHairWithHeadData([B[B)[B

    move-result-object p0

    .line 64
    invoke-static {p2, p0}, Lcom/faceunity/pta_art/utils/FileUtil;->saveDataToFile(Ljava/lang/String;[B)V

    return-void

    .line 57
    :cond_1
    :goto_0
    sget-object p1, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deformHairByHead "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setupData(Landroid/content/Context;)V
    .locals 5

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "p2a_client_core.bin"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 28
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 30
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/FUPTAClient;->setupData([B)Z

    move-result v0

    .line 32
    sget-object v1, Lcom/transsion/camera/featurelibs/ar/Authpack;->AUTH_SECRET_KEY:[B

    invoke-static {v1}, Lcom/faceunity/pta_art/constant/FUPTAClient;->setupAuth([B)Z

    move-result v1

    .line 33
    sget-object v2, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " setupAuth "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 26
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setupStyleData(Landroid/content/Context;)V
    .locals 4

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleClientBin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 45
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 47
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/FUPTAClient;->setupStyleData([B)Z

    move-result v0

    .line 48
    sget-object v1, Lcom/faceunity/pta_art/client/PTAClientWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupStyleData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 43
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
