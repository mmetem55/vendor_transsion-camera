.class public Lcom/transsion/camera/app/common/mode/VideoFileInfo;
.super Ljava/lang/Object;
.source "VideoFileInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitRateCoefficient:I

.field private final mBytePerS:J

.field private mCaptureFPS:D

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mFileExt:Ljava/lang/String;

.field private final mFileFolder:Ljava/lang/String;

.field private final mFileTempPath:Ljava/lang/String;

.field private final mMaxDuration:I

.field private final mMaxFileSize:J

.field private final mMimeType:Ljava/lang/String;

.field private final mNeedAudio:Z

.field private mNeedModifyIFrame:Z

.field private final mOrientation:I

.field private final mSaveTargetUri:Landroid/net/Uri;

.field private mVideoFrameRate:I

.field private final mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IDIIZ)V
    .locals 3

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 68
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileExt:Ljava/lang/String;

    move-object v1, p2

    .line 69
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMimeType:Ljava/lang/String;

    move-object v1, p3

    .line 70
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileFolder:Ljava/lang/String;

    move-object v1, p4

    .line 71
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileTempPath:Ljava/lang/String;

    move-object v1, p5

    .line 72
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileDescriptor:Ljava/io/FileDescriptor;

    move v1, p6

    .line 73
    iput-boolean v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mNeedAudio:Z

    move v1, p7

    .line 74
    iput v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMaxDuration:I

    move-wide v1, p8

    .line 75
    iput-wide v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMaxFileSize:J

    move-object v1, p10

    .line 76
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mVideoSize:Landroid/util/Size;

    move-wide v1, p11

    .line 77
    iput-wide v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mBytePerS:J

    move-object/from16 v1, p13

    .line 78
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mSaveTargetUri:Landroid/net/Uri;

    move/from16 v1, p14

    .line 79
    iput v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mOrientation:I

    move-wide/from16 v1, p15

    .line 80
    iput-wide v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mCaptureFPS:D

    move/from16 v1, p17

    .line 81
    iput v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mVideoFrameRate:I

    move/from16 v1, p18

    .line 82
    iput v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mBitRateCoefficient:I

    move/from16 v1, p19

    .line 83
    iput-boolean v1, v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mNeedModifyIFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IDIIZLcom/transsion/camera/app/common/mode/VideoFileInfo$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p19}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;ZIJLandroid/util/Size;JLandroid/net/Uri;IDIIZ)V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMimeTypeFromFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileExtFromFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileExtFromFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string p0, ".3gp"

    return-object p0
.end method

.method private static getMimeTypeFromFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "video/mp4"

    return-object p0

    :cond_0
    const-string p0, "video/3gp"

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/transsion/camera/app/common/mode/VideoFileInfo;
    .locals 0

    .line 155
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->clone()Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBitRateCoefficient()I
    .locals 0

    .line 144
    iget p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mBitRateCoefficient:I

    return p0
.end method

.method public getBytePerS()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mBytePerS:J

    return-wide v0
.end method

.method public getCaptureFPS()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mCaptureFPS:D

    return-wide v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFileExt()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileExt:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFolder()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getFileTempPath()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mFileTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDuration()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMaxDuration:I

    return p0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mOrientation:I

    return p0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mSaveTargetUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mVideoFrameRate:I

    return p0
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method

.method public isNeedAudio()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mNeedAudio:Z

    return p0
.end method

.method public isNeedModifyIFrame()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->mNeedModifyIFrame:Z

    return p0
.end method
