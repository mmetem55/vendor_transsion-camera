.class public Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
.super Ljava/lang/Object;
.source "MovieInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/MovieInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/feature/mode/movie/MovieInfo;
    .locals 2

    .line 173
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;-><init>()V

    .line 174
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mWidth:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$002(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I

    .line 175
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$102(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I

    .line 176
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mOrientation:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$202(Lcom/transsion/camera/feature/mode/movie/MovieInfo;I)I

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mDurations:[J

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$302(Lcom/transsion/camera/feature/mode/movie/MovieInfo;[J)[J

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mTempPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$402(Lcom/transsion/camera/feature/mode/movie/MovieInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mFolder:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->access$502(Lcom/transsion/camera/feature/mode/movie/MovieInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setDurations([J)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mDurations:[J

    return-object p0
.end method

.method public setFolder(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mFolder:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 148
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mHeight:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 153
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mOrientation:I

    return-object p0
.end method

.method public setTempPath(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;
    .locals 0

    .line 143
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieInfo$Build;->mWidth:I

    return-object p0
.end method
