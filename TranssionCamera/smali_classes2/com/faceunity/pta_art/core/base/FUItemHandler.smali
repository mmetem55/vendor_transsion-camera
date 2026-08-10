.class public Lcom/faceunity/pta_art/core/base/FUItemHandler;
.super Landroid/os/Handler;
.source "FUItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static what_index:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/faceunity/pta_art/core/base/FUItemHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    sput v0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->what_index:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static generateWhatIndex()I
    .locals 2

    .line 33
    sget v0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->what_index:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/faceunity/pta_art/core/base/FUItemHandler;->what_index:I

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;

    .line 55
    new-instance v0, Lcom/faceunity/pta_art/core/base/FUItem;

    invoke-static {p1}, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;->access$000(Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;->access$000(Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/faceunity/pta_art/core/base/FUItemHandler;->loadFUItem(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/faceunity/pta_art/core/base/FUItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;->onLoadComplete(Lcom/faceunity/pta_art/core/base/FUItem;)V

    :cond_0
    return-void
.end method

.method public loadFUItem(Ljava/lang/String;)I
    .locals 9

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/faceunity/pta_art/constant/Constant;->TestFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    sget-object v3, Lcom/faceunity/pta_art/core/base/FUItemHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "~~~~~~~~~~~~~~~~~~\u4f7f\u7528\u672c\u5730\u6d4b\u8bd5bundle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v3, p0

    goto/16 :goto_2

    .line 88
    :cond_1
    :try_start_2
    sget-object v4, Lcom/faceunity/pta_art/constant/Constant;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p0, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    move-object v3, p0

    .line 90
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 91
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 93
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v2

    .line 94
    sget-object p0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fuCreateItemFromPackage cost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 97
    sget-object p0, Lcom/faceunity/pta_art/core/base/FUItemHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily bundle loadFUItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " item "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", spend: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms on thread : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v3, :cond_4

    .line 104
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 100
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_4

    .line 104
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    return v2

    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :cond_5
    :goto_5
    throw p1
.end method

.method public loadFUItem(ILcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;)V
    .locals 0

    .line 66
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
