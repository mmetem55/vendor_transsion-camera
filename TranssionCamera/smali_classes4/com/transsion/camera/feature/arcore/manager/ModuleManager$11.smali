.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->snapShot(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dir:Ljava/lang/String;

.field final synthetic val$expandUI:Z

.field final synthetic val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field final synthetic val$onSaveThumbnailListener:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;ZLandroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$dir:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$expandUI:Z

    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object p6, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$onSaveThumbnailListener:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelReadFail()V
    .locals 0

    return-void
.end method

.method public onPixelReadFinished([III)V
    .locals 2

    .line 787
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 791
    invoke-static {}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReadBitmapListener filePath:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$dir:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 793
    iget-boolean p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$expandUI:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 794
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$dir:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$expandUI:Z

    invoke-static {p2, p1, v0}, Lcom/transsion/camera/utils/AvatarHelper;->saveAvatarThumbnail(Ljava/io/File;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 796
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$dir:Ljava/lang/String;

    invoke-static {p2, v0, p1, p3}, Lcom/faceunity/pta_art/utils/BitmapUtil;->saveBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;[F)V

    .line 799
    :goto_0
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$dir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bigthumbNail.jpg"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 803
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 804
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result p1

    int-to-long v0, p1

    .line 805
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p3, p2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 807
    :goto_1
    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 808
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-wide/16 p1, 0x2800

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    .line 811
    invoke-static {}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save bitmap is fail!,the Bigthumbnail size is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object p1

    .line 815
    :try_start_2
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/faceunity/pta_art/entity/DBHelper;->deleteHistoryByDir(Ljava/lang/String;)Z

    .line 817
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 818
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$newAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/faceunity/pta_art/utils/FileUtil;->deleteDirAndFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 821
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    :cond_1
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$onSaveThumbnailListener:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;

    if-eqz p0, :cond_3

    .line 824
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;->onThumbnailFailSaved()V

    goto :goto_4

    .line 828
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;->val$onSaveThumbnailListener:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;

    if-eqz p0, :cond_3

    .line 829
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;->onThumbnailSaved()V

    :cond_3
    :goto_4
    return-void
.end method
