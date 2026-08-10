.class public Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
.super Ljava/lang/Object;
.source "VideoFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/VideoFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitRateCoefficient:I

.field private mCaptureFPS:D

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mFileFolder:Ljava/lang/String;

.field private mFileTempPath:Ljava/lang/String;

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mNeedAudio:Z

.field private mNeedModifyIFrame:Z

.field private mOrientation:I

.field private final mProfile:Landroid/media/CamcorderProfile;

.field private mSaveTargetUri:Landroid/net/Uri;

.field private mVideoFrameRate:I


# direct methods
.method public constructor <init>(Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mCaptureFPS:D

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mVideoFrameRate:I

    .line 176
    iput v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mBitRateCoefficient:I

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/mode/VideoFileInfo;
    .locals 25

    move-object/from16 v0, p0

    .line 248
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_0

    .line 257
    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->access$100(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->access$000(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    new-instance v1, Landroid/util/Size;

    move-object v12, v1

    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v5, v2}, Landroid/util/Size;-><init>(II)V

    .line 260
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v13, v1

    .line 262
    new-instance v1, Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-object v2, v1

    iget-object v5, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileFolder:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileTempPath:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-boolean v8, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mNeedAudio:Z

    iget v9, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mMaxDuration:I

    iget-wide v10, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mMaxFileSize:J

    iget-object v15, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mSaveTargetUri:Landroid/net/Uri;

    move-object/from16 v23, v1

    iget v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mOrientation:I

    move/from16 v16, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mCaptureFPS:D

    move-wide/from16 v17, v1

    iget v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mVideoFrameRate:I

    move/from16 v19, v1

    iget v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mBitRateCoefficient:I

    move/from16 v20, v1

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v2, v24

    invoke-direct/range {v2 .. v22}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IDIIZLcom/transsion/camera/app/common/mode/VideoFileInfo$1;)V

    return-object v23

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CamcorderProfile should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mNeedAudio:Z

    return-object p0
.end method

.method public setBitRateCoefficient(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 229
    iput p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mBitRateCoefficient:I

    return-object p0
.end method

.method public setCaptureRate(D)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 234
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mCaptureFPS:D

    return-object p0
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileFolder:Ljava/lang/String;

    return-object p0
.end method

.method public setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 204
    iput p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mMaxDuration:I

    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 209
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mMaxFileSize:J

    return-object p0
.end method

.method public setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mNeedModifyIFrame:Z

    return-object p0
.end method

.method public setTargetUri(Landroid/net/Uri;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mSaveTargetUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setVideoFrameRate(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 224
    iput p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mVideoFrameRate:I

    return-object p0
.end method

.method public setVideoOrientation(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    .locals 0

    .line 219
    iput p1, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->mOrientation:I

    return-object p0
.end method
