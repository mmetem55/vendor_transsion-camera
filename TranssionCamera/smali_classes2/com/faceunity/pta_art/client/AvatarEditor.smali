.class public Lcom/faceunity/pta_art/client/AvatarEditor;
.super Ljava/lang/Object;
.source "AvatarEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;,
        Lcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/faceunity/pta_art/client/AvatarEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AvatarEditor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    new-instance v0, Lcom/faceunity/pta_art/client/AvatarEditor;

    invoke-direct {v0}, Lcom/faceunity/pta_art/client/AvatarEditor;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/client/AvatarEditor;->sInstance:Lcom/faceunity/pta_art/client/AvatarEditor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAvatar(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object p0

    .line 105
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/faceunity/pta_art/entity/DBHelper;->deleteHistoryByDir(Ljava/lang/String;)Z

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/faceunity/pta_art/utils/FileUtil;->deleteDirAndFile(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-interface {p2}, Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;->deleteComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-interface {p2}, Lcom/faceunity/pta_art/client/AvatarEditor$DeleteAvatarListener;->deleteFailure()V

    .line 114
    sget-object p1, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "deleteAvatar() failed"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/faceunity/pta_art/client/AvatarEditor;
    .locals 1

    .line 26
    sget-object v0, Lcom/faceunity/pta_art/client/AvatarEditor;->sInstance:Lcom/faceunity/pta_art/client/AvatarEditor;

    return-object v0
.end method

.method public static saveAvatar(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;ILcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;)V
    .locals 11

    .line 30
    sget-object v0, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAvatar start: hair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->clone()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/faceunity/pta_art/constant/Constant;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/faceunity/pta_art/utils/DateUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/faceunity/pta_art/utils/FileUtil;->createFile(Ljava/lang/String;)V

    .line 39
    new-instance v5, Ljava/io/File;

    const-string v6, ".nomedia"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 43
    sget-object v7, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create no media file failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBundleDir(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v4}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setExpressionIndex(I)V

    .line 49
    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v6

    invoke-static {v4, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 53
    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->isShapeChangeValues()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getEditFaceParameters(I)[F

    move-result-object p3

    if-eqz p3, :cond_1

    .line 55
    array-length v7, p3

    if-nez v7, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p3}, Lcom/faceunity/pta_art/client/PTAClientWrapper;->deformAvatarHead(Ljava/io/InputStream;Ljava/lang/String;[F)[B

    move-result-object v7

    goto :goto_2

    .line 56
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/faceunity/pta_art/entity/DBHelper;->deleteHistoryByDir(Ljava/lang/String;)Z

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 61
    :cond_2
    invoke-interface {p4}, Lcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;->saveFailure()V

    return-void

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    new-instance v8, Ljava/io/File;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v8}, Lcom/faceunity/pta_art/utils/FileUtil;->copyFileTo(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 69
    :goto_2
    sget-object p3, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAvatar, head saved:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/faceunity/pta_art/entity/BundleRes;

    .line 73
    iget-object v8, v6, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 74
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isDualHairColor()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v6, Lcom/faceunity/pta_art/entity/BundleRes;->others:[Ljava/lang/String;

    aget-object p1, p1, v4

    goto :goto_3

    :cond_4
    iget-object p1, v6, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    .line 75
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/faceunity/pta_art/entity/BundleRes;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->isHeadShapeChangeValues()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    iget-object p1, v6, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {v7, p0, v4}, Lcom/faceunity/pta_art/client/PTAClientWrapper;->deformHairByHead([BLjava/io/InputStream;Ljava/lang/String;)V

    goto :goto_4

    .line 79
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/faceunity/pta_art/utils/FileUtil;->copyFileTo(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 81
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "saveAvatar, hair saved:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    :cond_6
    invoke-virtual {v3, v2}, Lcom/faceunity/pta_art/entity/DBHelper;->insertHistory(Lcom/faceunity/pta_art/entity/AvatarPTA;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 85
    invoke-virtual {v2, p0, p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setIdCompat(J)V

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "saveAvatar cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-interface {p4, v2}, Lcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;->saveComplete(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 90
    sget-object p1, Lcom/faceunity/pta_art/client/AvatarEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "saveAvatar: "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/faceunity/pta_art/entity/DBHelper;->deleteHistoryByDir(Ljava/lang/String;)Z

    .line 93
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 97
    :cond_7
    invoke-interface {p4}, Lcom/faceunity/pta_art/client/AvatarEditor$SaveAvatarListener;->saveFailure()V

    :goto_5
    return-void
.end method
