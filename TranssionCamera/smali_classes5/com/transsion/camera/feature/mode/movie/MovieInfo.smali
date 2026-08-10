.class public final Lcom/transsion/camera/feature/mode/movie/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/feature/mode/movie/MovieInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"


# instance fields
.field private mDurations:[J

.field private mFileExt:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mHeight:I

.field private mMimeType:Ljava/lang/String;

.field private mMoviePath:Ljava/lang/String;

.field private mOrientation:I

.field private mTempPath:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".mp4"

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mFileExt:Ljava/lang/String;

    const-string v0, "video/mp4"

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mHeight:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mOrientation:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mDurations:[J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mTempPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mOrientation:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/movie/MovieInfo;[J)[J
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mDurations:[J

    return-object p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/movie/MovieInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mTempPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/movie/MovieInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mFolder:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDurations()[J
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mDurations:[J

    return-object p0
.end method

.method public getFileExt()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mFileExt:Ljava/lang/String;

    return-object p0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mFolder:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mHeight:I

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getMoviePath()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mMoviePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mOrientation:I

    return p0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mWidth:I

    return p0
.end method

.method public setMoviePath(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mMoviePath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieInfo{mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mOrientation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mDurations:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->mTempPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
