.class public interface abstract Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
.super Ljava/lang/Object;
.source "IStorage.java"


# virtual methods
.method public abstract addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
.end method

.method public abstract addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
.end method

.method public abstract addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V
.end method

.method public abstract addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
.end method

.method public abstract addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
.end method

.method public abstract clearTempFiles()V
.end method

.method public abstract createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z
.end method

.method public abstract createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z
.end method

.method public abstract createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z
.end method

.method public abstract deleteTempVideoFile()V
.end method

.method public abstract deleteTempVideoFile(Ljava/lang/String;)Z
.end method

.method public abstract getCameraDirectory()Ljava/lang/String;
.end method

.method public abstract getLeftSpace(Landroid/content/Context;)J
.end method

.method public abstract getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method public abstract getVideoTempFileSize()J
.end method

.method public abstract insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract makeCameraDirectory()Z
.end method

.method public abstract removeProcessMedia(Landroid/net/Uri;)V
.end method

.method public abstract renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z
.end method

.method public abstract renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method
