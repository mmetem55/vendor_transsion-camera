.class public Lcom/transsion/camera/app/common/mode/VideoFileSpec;
.super Ljava/lang/Object;
.source "VideoFileSpec.java"


# instance fields
.field private final mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mFileExt:Ljava/lang/String;

.field private final mFileFolder:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileTempPath:Ljava/lang/String;

.field private mFileTitle:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileExt:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileFolder:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mMimeType:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

    return-void
.end method


# virtual methods
.method public createFileData(Ljava/lang/String;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileName:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getAudioEffectRenderCallback()Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

    return-object p0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTempPath()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTitle()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setFileTempPath(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->mFileTempPath:Ljava/lang/String;

    return-void
.end method
